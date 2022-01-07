; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ntp/ntpd/extr_ntp_leapsec.c_leapsec_load_file.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ntp/ntpd/extr_ntp_leapsec.c_leapsec_load_file.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stat = type { i64, i64 }

@FALSE = common dso_local global i32 0, align 4
@LOG_ERR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"%s ('%s'): stat failed: %m\00", align 1
@logPrefix = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.2 = private unnamed_addr constant [27 x i8] c"%s ('%s'): open failed: %m\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @leapsec_load_file(i8* %0, %struct.stat* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca %struct.stat*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca %struct.stat, align 8
  %12 = alloca i32, align 4
  store i8* %0, i8** %6, align 8
  store %struct.stat* %1, %struct.stat** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %13 = load i8*, i8** %6, align 8
  %14 = icmp ne i8* %13, null
  br i1 %14, label %15, label %20

15:                                               ; preds = %4
  %16 = load i8*, i8** %6, align 8
  %17 = load i8, i8* %16, align 1
  %18 = sext i8 %17 to i32
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %22, label %20

20:                                               ; preds = %15, %4
  %21 = load i32, i32* @FALSE, align 4
  store i32 %21, i32* %5, align 4
  br label %84

22:                                               ; preds = %15
  %23 = load i8*, i8** %6, align 8
  %24 = call i64 @stat(i8* %23, %struct.stat* %11)
  %25 = icmp ne i64 0, %24
  br i1 %25, label %26, label %36

26:                                               ; preds = %22
  %27 = load i32, i32* %9, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %34

29:                                               ; preds = %26
  %30 = load i32, i32* @LOG_ERR, align 4
  %31 = load i32, i32* @logPrefix, align 4
  %32 = load i8*, i8** %6, align 8
  %33 = call i32 @msyslog(i32 %30, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i32 %31, i8* %32)
  br label %34

34:                                               ; preds = %29, %26
  %35 = load i32, i32* @FALSE, align 4
  store i32 %35, i32* %5, align 4
  br label %84

36:                                               ; preds = %22
  %37 = load %struct.stat*, %struct.stat** %7, align 8
  %38 = icmp ne %struct.stat* null, %37
  br i1 %38, label %39, label %62

39:                                               ; preds = %36
  %40 = load i32, i32* %8, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %58, label %42

42:                                               ; preds = %39
  %43 = load %struct.stat*, %struct.stat** %7, align 8
  %44 = getelementptr inbounds %struct.stat, %struct.stat* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = getelementptr inbounds %struct.stat, %struct.stat* %11, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = icmp eq i64 %45, %47
  br i1 %48, label %49, label %58

49:                                               ; preds = %42
  %50 = load %struct.stat*, %struct.stat** %7, align 8
  %51 = getelementptr inbounds %struct.stat, %struct.stat* %50, i32 0, i32 1
  %52 = load i64, i64* %51, align 8
  %53 = getelementptr inbounds %struct.stat, %struct.stat* %11, i32 0, i32 1
  %54 = load i64, i64* %53, align 8
  %55 = icmp eq i64 %52, %54
  br i1 %55, label %56, label %58

56:                                               ; preds = %49
  %57 = load i32, i32* @FALSE, align 4
  store i32 %57, i32* %5, align 4
  br label %84

58:                                               ; preds = %49, %42, %39
  %59 = load %struct.stat*, %struct.stat** %7, align 8
  %60 = bitcast %struct.stat* %59 to i8*
  %61 = bitcast %struct.stat* %11 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %60, i8* align 8 %61, i64 16, i1 false)
  br label %62

62:                                               ; preds = %58, %36
  %63 = load i8*, i8** %6, align 8
  %64 = call i32* @fopen(i8* %63, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  store i32* %64, i32** %10, align 8
  %65 = icmp eq i32* %64, null
  br i1 %65, label %66, label %76

66:                                               ; preds = %62
  %67 = load i32, i32* %9, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %74

69:                                               ; preds = %66
  %70 = load i32, i32* @LOG_ERR, align 4
  %71 = load i32, i32* @logPrefix, align 4
  %72 = load i8*, i8** %6, align 8
  %73 = call i32 @msyslog(i32 %70, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0), i32 %71, i8* %72)
  br label %74

74:                                               ; preds = %69, %66
  %75 = load i32, i32* @FALSE, align 4
  store i32 %75, i32* %5, align 4
  br label %84

76:                                               ; preds = %62
  %77 = load i32*, i32** %10, align 8
  %78 = load i8*, i8** %6, align 8
  %79 = load i32, i32* %9, align 4
  %80 = call i32 @leapsec_load_stream(i32* %77, i8* %78, i32 %79)
  store i32 %80, i32* %12, align 4
  %81 = load i32*, i32** %10, align 8
  %82 = call i32 @fclose(i32* %81)
  %83 = load i32, i32* %12, align 4
  store i32 %83, i32* %5, align 4
  br label %84

84:                                               ; preds = %76, %74, %56, %34, %20
  %85 = load i32, i32* %5, align 4
  ret i32 %85
}

declare dso_local i64 @stat(i8*, %struct.stat*) #1

declare dso_local i32 @msyslog(i32, i8*, i32, i8*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32* @fopen(i8*, i8*) #1

declare dso_local i32 @leapsec_load_stream(i32*, i8*, i32) #1

declare dso_local i32 @fclose(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
