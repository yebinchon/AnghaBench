; ModuleID = '/home/carl/AnghaBench/freebsd/sbin/ccdconfig/extr_ccdconfig.c_resolve_ccdname.c'
source_filename = "/home/carl/AnghaBench/freebsd/sbin/ccdconfig/extr_ccdconfig.c_resolve_ccdname.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@_PATH_DEV = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [4 x i8] c"ccd\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @resolve_ccdname to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @resolve_ccdname(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  %4 = load i8*, i8** %3, align 8
  %5 = load i8*, i8** @_PATH_DEV, align 8
  %6 = load i8*, i8** @_PATH_DEV, align 8
  %7 = call i32 @strlen(i8* %6)
  %8 = call i64 @strncmp(i8* %4, i8* %5, i32 %7)
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %16, label %10

10:                                               ; preds = %1
  %11 = load i8*, i8** @_PATH_DEV, align 8
  %12 = call i32 @strlen(i8* %11)
  %13 = load i8*, i8** %3, align 8
  %14 = sext i32 %12 to i64
  %15 = getelementptr inbounds i8, i8* %13, i64 %14
  store i8* %15, i8** %3, align 8
  br label %16

16:                                               ; preds = %10, %1
  %17 = load i8*, i8** %3, align 8
  %18 = call i64 @strncmp(i8* %17, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 3)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %16
  store i32 -1, i32* %2, align 4
  br label %32

21:                                               ; preds = %16
  %22 = load i8*, i8** %3, align 8
  %23 = getelementptr inbounds i8, i8* %22, i64 3
  store i8* %23, i8** %3, align 8
  %24 = load i8*, i8** %3, align 8
  %25 = load i8, i8* %24, align 1
  %26 = call i32 @isdigit(i8 signext %25)
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %29, label %28

28:                                               ; preds = %21
  store i32 -1, i32* %2, align 4
  br label %32

29:                                               ; preds = %21
  %30 = load i8*, i8** %3, align 8
  %31 = call i32 @strtoul(i8* %30, i32* null, i32 10)
  store i32 %31, i32* %2, align 4
  br label %32

32:                                               ; preds = %29, %28, %20
  %33 = load i32, i32* %2, align 4
  ret i32 %33
}

declare dso_local i64 @strncmp(i8*, i8*, i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @isdigit(i8 signext) #1

declare dso_local i32 @strtoul(i8*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
