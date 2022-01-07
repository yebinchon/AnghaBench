; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ntp/util/extr_ntp-keygen.c_gen_md5.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ntp/util/extr_ntp-keygen.c_gen_md5.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MD5SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"MD5key\00", align 1
@groupname = common dso_local global i32 0, align 4
@MD5KEYS = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [33 x i8] c"ntp_crypto_random_buf() failed.\0A\00", align 1
@.str.2 = private unnamed_addr constant [23 x i8] c"%2d MD5 %s  # MD5 key\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @gen_md5(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8, align 1
  %9 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %10 = load i32, i32* @MD5SIZE, align 4
  %11 = add nsw i32 %10, 1
  %12 = zext i32 %11 to i64
  %13 = call i8* @llvm.stacksave()
  store i8* %13, i8** %3, align 8
  %14 = alloca i8, i64 %12, align 16
  store i64 %12, i64* %4, align 8
  %15 = load i8*, i8** %2, align 8
  %16 = load i32, i32* @groupname, align 4
  %17 = call i32* @fheader(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i8* %15, i32 %16)
  store i32* %17, i32** %5, align 8
  store i32 1, i32* %6, align 4
  br label %18

18:                                               ; preds = %69, %1
  %19 = load i32, i32* %6, align 4
  %20 = load i32, i32* @MD5KEYS, align 4
  %21 = icmp sle i32 %19, %20
  br i1 %21, label %22, label %72

22:                                               ; preds = %18
  store i32 0, i32* %7, align 4
  br label %23

23:                                               ; preds = %59, %22
  %24 = load i32, i32* %7, align 4
  %25 = load i32, i32* @MD5SIZE, align 4
  %26 = icmp slt i32 %24, %25
  br i1 %26, label %27, label %62

27:                                               ; preds = %23
  br label %28

28:                                               ; preds = %53, %43, %27
  br label %29

29:                                               ; preds = %28
  %30 = call i32 @ntp_crypto_random_buf(i8* %8, i32 1)
  store i32 %30, i32* %9, align 4
  %31 = load i32, i32* %9, align 4
  %32 = icmp eq i32 -1, %31
  br i1 %32, label %33, label %39

33:                                               ; preds = %29
  %34 = load i32, i32* @stderr, align 4
  %35 = sext i32 %34 to i64
  %36 = inttoptr i64 %35 to i32*
  %37 = call i32 (i32*, i8*, ...) @fprintf(i32* %36, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0))
  %38 = call i32 @exit(i32 -1) #4
  unreachable

39:                                               ; preds = %29
  %40 = load i8, i8* %8, align 1
  %41 = sext i8 %40 to i32
  %42 = icmp eq i32 %41, 35
  br i1 %42, label %43, label %44

43:                                               ; preds = %39
  br label %28

44:                                               ; preds = %39
  %45 = load i8, i8* %8, align 1
  %46 = sext i8 %45 to i32
  %47 = icmp sgt i32 %46, 32
  br i1 %47, label %48, label %53

48:                                               ; preds = %44
  %49 = load i8, i8* %8, align 1
  %50 = sext i8 %49 to i32
  %51 = icmp slt i32 %50, 127
  br i1 %51, label %52, label %53

52:                                               ; preds = %48
  br label %54

53:                                               ; preds = %48, %44
  br label %28

54:                                               ; preds = %52
  %55 = load i8, i8* %8, align 1
  %56 = load i32, i32* %7, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds i8, i8* %14, i64 %57
  store i8 %55, i8* %58, align 1
  br label %59

59:                                               ; preds = %54
  %60 = load i32, i32* %7, align 4
  %61 = add nsw i32 %60, 1
  store i32 %61, i32* %7, align 4
  br label %23

62:                                               ; preds = %23
  %63 = load i32, i32* %7, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds i8, i8* %14, i64 %64
  store i8 0, i8* %65, align 1
  %66 = load i32*, i32** %5, align 8
  %67 = load i32, i32* %6, align 4
  %68 = call i32 (i32*, i8*, ...) @fprintf(i32* %66, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0), i32 %67, i8* %14)
  br label %69

69:                                               ; preds = %62
  %70 = load i32, i32* %6, align 4
  %71 = add nsw i32 %70, 1
  store i32 %71, i32* %6, align 4
  br label %18

72:                                               ; preds = %18
  %73 = load i32*, i32** %5, align 8
  %74 = call i32 @fclose(i32* %73)
  %75 = load i8*, i8** %3, align 8
  call void @llvm.stackrestore(i8* %75)
  ret i32 1
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32* @fheader(i8*, i8*, i32) #2

declare dso_local i32 @ntp_crypto_random_buf(i8*, i32) #2

declare dso_local i32 @fprintf(i32*, i8*, ...) #2

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #3

declare dso_local i32 @fclose(i32*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
