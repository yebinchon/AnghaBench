; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssh/extr_auth.c_expand_authorized_keys.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssh/extr_auth.c_expand_authorized_keys.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.passwd = type { i8*, i32, i64 }

@PATH_MAX = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"%llu\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"h\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"u\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"U\00", align 1
@.str.4 = private unnamed_addr constant [6 x i8] c"%s/%s\00", align 1
@.str.5 = private unnamed_addr constant [38 x i8] c"expand_authorized_keys: path too long\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @expand_authorized_keys(i8* %0, %struct.passwd* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.passwd*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca [32 x i8], align 16
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store %struct.passwd* %1, %struct.passwd** %5, align 8
  %12 = load i32, i32* @PATH_MAX, align 4
  %13 = zext i32 %12 to i64
  %14 = call i8* @llvm.stacksave()
  store i8* %14, i8** %8, align 8
  %15 = alloca i8, i64 %13, align 16
  store i64 %13, i64* %9, align 8
  %16 = getelementptr inbounds [32 x i8], [32 x i8]* %7, i64 0, i64 0
  %17 = load %struct.passwd*, %struct.passwd** %5, align 8
  %18 = getelementptr inbounds %struct.passwd, %struct.passwd* %17, i32 0, i32 2
  %19 = load i64, i64* %18, align 8
  %20 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %16, i32 32, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i64 %19)
  %21 = load i8*, i8** %4, align 8
  %22 = load %struct.passwd*, %struct.passwd** %5, align 8
  %23 = getelementptr inbounds %struct.passwd, %struct.passwd* %22, i32 0, i32 0
  %24 = load i8*, i8** %23, align 8
  %25 = load %struct.passwd*, %struct.passwd** %5, align 8
  %26 = getelementptr inbounds %struct.passwd, %struct.passwd* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 8
  %28 = getelementptr inbounds [32 x i8], [32 x i8]* %7, i64 0, i64 0
  %29 = call i8* @percent_expand(i8* %21, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), i8* %24, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0), i32 %27, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0), i8* %28, i8* null)
  store i8* %29, i8** %6, align 8
  %30 = load i8*, i8** %6, align 8
  %31 = load i8, i8* %30, align 1
  %32 = sext i8 %31 to i32
  %33 = icmp eq i32 %32, 47
  br i1 %33, label %34, label %36

34:                                               ; preds = %2
  %35 = load i8*, i8** %6, align 8
  store i8* %35, i8** %3, align 8
  store i32 1, i32* %11, align 4
  br label %55

36:                                               ; preds = %2
  %37 = trunc i64 %13 to i32
  %38 = load %struct.passwd*, %struct.passwd** %5, align 8
  %39 = getelementptr inbounds %struct.passwd, %struct.passwd* %38, i32 0, i32 0
  %40 = load i8*, i8** %39, align 8
  %41 = load i8*, i8** %6, align 8
  %42 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %15, i32 %37, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0), i8* %40, i8* %41)
  store i32 %42, i32* %10, align 4
  %43 = load i32, i32* %10, align 4
  %44 = icmp slt i32 %43, 0
  br i1 %44, label %49, label %45

45:                                               ; preds = %36
  %46 = load i32, i32* %10, align 4
  %47 = sext i32 %46 to i64
  %48 = icmp uge i64 %47, %13
  br i1 %48, label %49, label %51

49:                                               ; preds = %45, %36
  %50 = call i32 @fatal(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.5, i64 0, i64 0))
  br label %51

51:                                               ; preds = %49, %45
  %52 = load i8*, i8** %6, align 8
  %53 = call i32 @free(i8* %52)
  %54 = call i8* @xstrdup(i8* %15)
  store i8* %54, i8** %3, align 8
  store i32 1, i32* %11, align 4
  br label %55

55:                                               ; preds = %51, %34
  %56 = load i8*, i8** %8, align 8
  call void @llvm.stackrestore(i8* %56)
  %57 = load i8*, i8** %3, align 8
  ret i8* %57
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @snprintf(i8*, i32, i8*, ...) #2

declare dso_local i8* @percent_expand(i8*, i8*, i8*, i8*, i32, i8*, i8*, i8*) #2

declare dso_local i32 @fatal(i8*) #2

declare dso_local i32 @free(i8*) #2

declare dso_local i8* @xstrdup(i8*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
