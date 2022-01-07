; ModuleID = '/home/carl/AnghaBench/freebsd/sbin/bectl/extr_bectl_jail.c_bectl_search_jail_paths.c'
source_filename = "/home/carl/AnghaBench/freebsd/sbin/bectl/extr_bectl_jail.c_bectl_search_jail_paths.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MAXPATHLEN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"lastjid\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"path\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @bectl_search_jail_paths to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bectl_search_jail_paths(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca [16 x i8], align 16
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  %9 = load i32, i32* @MAXPATHLEN, align 4
  %10 = zext i32 %9 to i64
  %11 = call i8* @llvm.stacksave()
  store i8* %11, i8** %6, align 8
  %12 = alloca i8, i64 %10, align 16
  store i64 %10, i64* %7, align 8
  %13 = getelementptr inbounds [16 x i8], [16 x i8]* %5, i64 0, i64 0
  %14 = call i32 @snprintf(i8* %13, i32 16, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32 0)
  br label %15

15:                                               ; preds = %26, %1
  %16 = getelementptr inbounds [16 x i8], [16 x i8]* %5, i64 0, i64 0
  %17 = bitcast i8* %12 to i8**
  %18 = call i32 @jail_getv(i32 0, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i8* %16, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i8** %17, i32* null)
  store i32 %18, i32* %4, align 4
  %19 = icmp ne i32 %18, -1
  br i1 %19, label %20, label %30

20:                                               ; preds = %15
  %21 = load i8*, i8** %3, align 8
  %22 = call i64 @strcmp(i8* %12, i8* %21)
  %23 = icmp eq i64 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %20
  %25 = load i32, i32* %4, align 4
  store i32 %25, i32* %2, align 4
  store i32 1, i32* %8, align 4
  br label %31

26:                                               ; preds = %20
  %27 = getelementptr inbounds [16 x i8], [16 x i8]* %5, i64 0, i64 0
  %28 = load i32, i32* %4, align 4
  %29 = call i32 @snprintf(i8* %27, i32 16, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32 %28)
  br label %15

30:                                               ; preds = %15
  store i32 -1, i32* %2, align 4
  store i32 1, i32* %8, align 4
  br label %31

31:                                               ; preds = %30, %24
  %32 = load i8*, i8** %6, align 8
  call void @llvm.stackrestore(i8* %32)
  %33 = load i32, i32* %2, align 4
  ret i32 %33
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i32) #2

declare dso_local i32 @jail_getv(i32, i8*, i8*, i8*, i8**, i32*) #2

declare dso_local i64 @strcmp(i8*, i8*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
