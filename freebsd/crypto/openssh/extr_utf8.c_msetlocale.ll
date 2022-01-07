; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssh/extr_utf8.c_msetlocale.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssh/extr_utf8.c_msetlocale.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [7 x i8] c"LC_ALL\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"LC_CTYPE\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"LANG\00", align 1
@__const.msetlocale.vars = private unnamed_addr constant [4 x i8*] [i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i32 0, i32 0), i8* null], align 16
@.str.3 = private unnamed_addr constant [3 x i8] c"TR\00", align 1
@.str.4 = private unnamed_addr constant [6 x i8] c"UTF-8\00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c"UTF8\00", align 1
@LC_CTYPE = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [8 x i8] c"C.UTF-8\00", align 1
@.str.7 = private unnamed_addr constant [12 x i8] c"POSIX.UTF-8\00", align 1
@.str.8 = private unnamed_addr constant [2 x i8] c"C\00", align 1
@.str.9 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @msetlocale() #0 {
  %1 = alloca [4 x i8*], align 16
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  %4 = bitcast [4 x i8*]* %1 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %4, i8* align 16 bitcast ([4 x i8*]* @__const.msetlocale.vars to i8*), i64 32, i1 false)
  store i32 0, i32* %3, align 4
  br label %5

5:                                                ; preds = %44, %0
  %6 = load i32, i32* %3, align 4
  %7 = sext i32 %6 to i64
  %8 = getelementptr inbounds [4 x i8*], [4 x i8*]* %1, i64 0, i64 %7
  %9 = load i8*, i8** %8, align 8
  %10 = icmp ne i8* %9, null
  br i1 %10, label %11, label %47

11:                                               ; preds = %5
  %12 = load i32, i32* %3, align 4
  %13 = sext i32 %12 to i64
  %14 = getelementptr inbounds [4 x i8*], [4 x i8*]* %1, i64 0, i64 %13
  %15 = load i8*, i8** %14, align 8
  %16 = call i8* @getenv(i8* %15)
  store i8* %16, i8** %2, align 8
  %17 = icmp eq i8* %16, null
  br i1 %17, label %18, label %19

18:                                               ; preds = %11
  br label %44

19:                                               ; preds = %11
  %20 = load i8*, i8** %2, align 8
  %21 = call i64 @strncasecmp(i8* %20, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i32 2)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %19
  br label %47

24:                                               ; preds = %19
  %25 = load i8*, i8** %2, align 8
  %26 = call i32* @strcasestr(i8* %25, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0))
  %27 = icmp ne i32* %26, null
  br i1 %27, label %32, label %28

28:                                               ; preds = %24
  %29 = load i8*, i8** %2, align 8
  %30 = call i32* @strcasestr(i8* %29, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0))
  %31 = icmp ne i32* %30, null
  br i1 %31, label %32, label %41

32:                                               ; preds = %28, %24
  %33 = load i32, i32* @LC_CTYPE, align 4
  %34 = call i32* @setlocale(i32 %33, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6, i64 0, i64 0))
  %35 = icmp ne i32* %34, null
  br i1 %35, label %40, label %36

36:                                               ; preds = %32
  %37 = load i32, i32* @LC_CTYPE, align 4
  %38 = call i32* @setlocale(i32 %37, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.7, i64 0, i64 0))
  %39 = icmp ne i32* %38, null
  br i1 %39, label %40, label %41

40:                                               ; preds = %36, %32
  br label %50

41:                                               ; preds = %36, %28
  %42 = load i32, i32* @LC_CTYPE, align 4
  %43 = call i32* @setlocale(i32 %42, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.8, i64 0, i64 0))
  br label %50

44:                                               ; preds = %18
  %45 = load i32, i32* %3, align 4
  %46 = add nsw i32 %45, 1
  store i32 %46, i32* %3, align 4
  br label %5

47:                                               ; preds = %23, %5
  %48 = load i32, i32* @LC_CTYPE, align 4
  %49 = call i32* @setlocale(i32 %48, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.9, i64 0, i64 0))
  br label %50

50:                                               ; preds = %47, %41, %40
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i8* @getenv(i8*) #2

declare dso_local i64 @strncasecmp(i8*, i8*, i32) #2

declare dso_local i32* @strcasestr(i8*, i8*) #2

declare dso_local i32* @setlocale(i32, i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
