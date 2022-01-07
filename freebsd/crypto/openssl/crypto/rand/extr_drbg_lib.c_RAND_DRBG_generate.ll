; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssl/crypto/rand/extr_drbg_lib.c_RAND_DRBG_generate.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssl/crypto/rand/extr_drbg_lib.c_RAND_DRBG_generate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i64, i64, i64, i32, i64, i64, i64, i64, %struct.TYPE_9__*, %struct.TYPE_8__*, i32 }
%struct.TYPE_9__ = type { i32 (%struct.TYPE_10__*, i8*, i64, i8*, i64)* }
%struct.TYPE_8__ = type { i32 }

@DRBG_READY = common dso_local global i64 0, align 8
@DRBG_ERROR = common dso_local global i64 0, align 8
@RAND_F_RAND_DRBG_GENERATE = common dso_local global i32 0, align 4
@RAND_R_IN_ERROR_STATE = common dso_local global i32 0, align 4
@DRBG_UNINITIALISED = common dso_local global i64 0, align 8
@RAND_R_NOT_INSTANTIATED = common dso_local global i32 0, align 4
@RAND_R_REQUEST_TOO_LARGE_FOR_DRBG = common dso_local global i32 0, align 4
@RAND_R_ADDITIONAL_INPUT_TOO_LONG = common dso_local global i32 0, align 4
@RAND_R_RESEED_ERROR = common dso_local global i32 0, align 4
@RAND_R_GENERATE_ERROR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @RAND_DRBG_generate(%struct.TYPE_10__* %0, i8* %1, i64 %2, i32 %3, i8* %4, i64 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_10__*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i64, align 8
  %17 = alloca i32, align 4
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %8, align 8
  store i8* %1, i8** %9, align 8
  store i64 %2, i64* %10, align 8
  store i32 %3, i32* %11, align 4
  store i8* %4, i8** %12, align 8
  store i64 %5, i64* %13, align 8
  store i32 0, i32* %15, align 4
  %18 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %19 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @DRBG_READY, align 8
  %22 = icmp ne i64 %20, %21
  br i1 %22, label %23, label %46

23:                                               ; preds = %6
  %24 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %25 = call i32 @rand_drbg_restart(%struct.TYPE_10__* %24, i32* null, i32 0, i32 0)
  %26 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %27 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* @DRBG_ERROR, align 8
  %30 = icmp eq i64 %28, %29
  br i1 %30, label %31, label %35

31:                                               ; preds = %23
  %32 = load i32, i32* @RAND_F_RAND_DRBG_GENERATE, align 4
  %33 = load i32, i32* @RAND_R_IN_ERROR_STATE, align 4
  %34 = call i32 @RANDerr(i32 %32, i32 %33)
  store i32 0, i32* %7, align 4
  br label %180

35:                                               ; preds = %23
  %36 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %37 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = load i64, i64* @DRBG_UNINITIALISED, align 8
  %40 = icmp eq i64 %38, %39
  br i1 %40, label %41, label %45

41:                                               ; preds = %35
  %42 = load i32, i32* @RAND_F_RAND_DRBG_GENERATE, align 4
  %43 = load i32, i32* @RAND_R_NOT_INSTANTIATED, align 4
  %44 = call i32 @RANDerr(i32 %42, i32 %43)
  store i32 0, i32* %7, align 4
  br label %180

45:                                               ; preds = %35
  br label %46

46:                                               ; preds = %45, %6
  %47 = load i64, i64* %10, align 8
  %48 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %49 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %48, i32 0, i32 1
  %50 = load i64, i64* %49, align 8
  %51 = icmp ugt i64 %47, %50
  br i1 %51, label %52, label %56

52:                                               ; preds = %46
  %53 = load i32, i32* @RAND_F_RAND_DRBG_GENERATE, align 4
  %54 = load i32, i32* @RAND_R_REQUEST_TOO_LARGE_FOR_DRBG, align 4
  %55 = call i32 @RANDerr(i32 %53, i32 %54)
  store i32 0, i32* %7, align 4
  br label %180

56:                                               ; preds = %46
  %57 = load i64, i64* %13, align 8
  %58 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %59 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %58, i32 0, i32 2
  %60 = load i64, i64* %59, align 8
  %61 = icmp ugt i64 %57, %60
  br i1 %61, label %62, label %66

62:                                               ; preds = %56
  %63 = load i32, i32* @RAND_F_RAND_DRBG_GENERATE, align 4
  %64 = load i32, i32* @RAND_R_ADDITIONAL_INPUT_TOO_LONG, align 4
  %65 = call i32 @RANDerr(i32 %63, i32 %64)
  store i32 0, i32* %7, align 4
  br label %180

66:                                               ; preds = %56
  %67 = call i32 (...) @openssl_get_fork_id()
  store i32 %67, i32* %14, align 4
  %68 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %69 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %68, i32 0, i32 3
  %70 = load i32, i32* %69, align 8
  %71 = load i32, i32* %14, align 4
  %72 = icmp ne i32 %70, %71
  br i1 %72, label %73, label %77

73:                                               ; preds = %66
  %74 = load i32, i32* %14, align 4
  %75 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %76 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %75, i32 0, i32 3
  store i32 %74, i32* %76, align 8
  store i32 1, i32* %15, align 4
  br label %77

77:                                               ; preds = %73, %66
  %78 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %79 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %78, i32 0, i32 4
  %80 = load i64, i64* %79, align 8
  %81 = icmp sgt i64 %80, 0
  br i1 %81, label %82, label %92

82:                                               ; preds = %77
  %83 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %84 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %83, i32 0, i32 5
  %85 = load i64, i64* %84, align 8
  %86 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %87 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %86, i32 0, i32 4
  %88 = load i64, i64* %87, align 8
  %89 = icmp sge i64 %85, %88
  br i1 %89, label %90, label %91

90:                                               ; preds = %82
  store i32 1, i32* %15, align 4
  br label %91

91:                                               ; preds = %90, %82
  br label %92

92:                                               ; preds = %91, %77
  %93 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %94 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %93, i32 0, i32 6
  %95 = load i64, i64* %94, align 8
  %96 = icmp sgt i64 %95, 0
  br i1 %96, label %97, label %116

97:                                               ; preds = %92
  %98 = call i64 @time(i32* null)
  store i64 %98, i64* %16, align 8
  %99 = load i64, i64* %16, align 8
  %100 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %101 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %100, i32 0, i32 7
  %102 = load i64, i64* %101, align 8
  %103 = icmp slt i64 %99, %102
  br i1 %103, label %114, label %104

104:                                              ; preds = %97
  %105 = load i64, i64* %16, align 8
  %106 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %107 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %106, i32 0, i32 7
  %108 = load i64, i64* %107, align 8
  %109 = sub nsw i64 %105, %108
  %110 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %111 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %110, i32 0, i32 6
  %112 = load i64, i64* %111, align 8
  %113 = icmp sge i64 %109, %112
  br i1 %113, label %114, label %115

114:                                              ; preds = %104, %97
  store i32 1, i32* %15, align 4
  br label %115

115:                                              ; preds = %114, %104
  br label %116

116:                                              ; preds = %115, %92
  %117 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %118 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %117, i32 0, i32 9
  %119 = load %struct.TYPE_8__*, %struct.TYPE_8__** %118, align 8
  %120 = icmp ne %struct.TYPE_8__* %119, null
  br i1 %120, label %121, label %137

121:                                              ; preds = %116
  %122 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %123 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %122, i32 0, i32 10
  %124 = call i32 @tsan_load(i32* %123)
  store i32 %124, i32* %17, align 4
  %125 = load i32, i32* %17, align 4
  %126 = icmp ugt i32 %125, 0
  br i1 %126, label %127, label %136

127:                                              ; preds = %121
  %128 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %129 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %128, i32 0, i32 9
  %130 = load %struct.TYPE_8__*, %struct.TYPE_8__** %129, align 8
  %131 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %130, i32 0, i32 0
  %132 = call i32 @tsan_load(i32* %131)
  %133 = load i32, i32* %17, align 4
  %134 = icmp ne i32 %132, %133
  br i1 %134, label %135, label %136

135:                                              ; preds = %127
  store i32 1, i32* %15, align 4
  br label %136

136:                                              ; preds = %135, %127, %121
  br label %137

137:                                              ; preds = %136, %116
  %138 = load i32, i32* %15, align 4
  %139 = icmp ne i32 %138, 0
  br i1 %139, label %143, label %140

140:                                              ; preds = %137
  %141 = load i32, i32* %11, align 4
  %142 = icmp ne i32 %141, 0
  br i1 %142, label %143, label %155

143:                                              ; preds = %140, %137
  %144 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %145 = load i8*, i8** %12, align 8
  %146 = load i64, i64* %13, align 8
  %147 = load i32, i32* %11, align 4
  %148 = call i32 @RAND_DRBG_reseed(%struct.TYPE_10__* %144, i8* %145, i64 %146, i32 %147)
  %149 = icmp ne i32 %148, 0
  br i1 %149, label %154, label %150

150:                                              ; preds = %143
  %151 = load i32, i32* @RAND_F_RAND_DRBG_GENERATE, align 4
  %152 = load i32, i32* @RAND_R_RESEED_ERROR, align 4
  %153 = call i32 @RANDerr(i32 %151, i32 %152)
  store i32 0, i32* %7, align 4
  br label %180

154:                                              ; preds = %143
  store i8* null, i8** %12, align 8
  store i64 0, i64* %13, align 8
  br label %155

155:                                              ; preds = %154, %140
  %156 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %157 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %156, i32 0, i32 8
  %158 = load %struct.TYPE_9__*, %struct.TYPE_9__** %157, align 8
  %159 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %158, i32 0, i32 0
  %160 = load i32 (%struct.TYPE_10__*, i8*, i64, i8*, i64)*, i32 (%struct.TYPE_10__*, i8*, i64, i8*, i64)** %159, align 8
  %161 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %162 = load i8*, i8** %9, align 8
  %163 = load i64, i64* %10, align 8
  %164 = load i8*, i8** %12, align 8
  %165 = load i64, i64* %13, align 8
  %166 = call i32 %160(%struct.TYPE_10__* %161, i8* %162, i64 %163, i8* %164, i64 %165)
  %167 = icmp ne i32 %166, 0
  br i1 %167, label %175, label %168

168:                                              ; preds = %155
  %169 = load i64, i64* @DRBG_ERROR, align 8
  %170 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %171 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %170, i32 0, i32 0
  store i64 %169, i64* %171, align 8
  %172 = load i32, i32* @RAND_F_RAND_DRBG_GENERATE, align 4
  %173 = load i32, i32* @RAND_R_GENERATE_ERROR, align 4
  %174 = call i32 @RANDerr(i32 %172, i32 %173)
  store i32 0, i32* %7, align 4
  br label %180

175:                                              ; preds = %155
  %176 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %177 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %176, i32 0, i32 5
  %178 = load i64, i64* %177, align 8
  %179 = add nsw i64 %178, 1
  store i64 %179, i64* %177, align 8
  store i32 1, i32* %7, align 4
  br label %180

180:                                              ; preds = %175, %168, %150, %62, %52, %41, %31
  %181 = load i32, i32* %7, align 4
  ret i32 %181
}

declare dso_local i32 @rand_drbg_restart(%struct.TYPE_10__*, i32*, i32, i32) #1

declare dso_local i32 @RANDerr(i32, i32) #1

declare dso_local i32 @openssl_get_fork_id(...) #1

declare dso_local i64 @time(i32*) #1

declare dso_local i32 @tsan_load(i32*) #1

declare dso_local i32 @RAND_DRBG_reseed(%struct.TYPE_10__*, i8*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
