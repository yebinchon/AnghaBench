; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/netbsd-tests/crypto/opencrypto/extr_h_aesctr1.c_main.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/netbsd-tests/crypto/opencrypto/extr_h_aesctr1.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64, i32*, i32, i32, i32, i32 }
%struct.session_op = type { i64, i8*, i32, i8*, i8*, i32, i32, i8*, i32, i32 }
%struct.crypt_op = type { i64, i8*, i32, i8*, i8*, i32, i32, i8*, i32, i32 }

@tests = common dso_local global %struct.TYPE_3__* null, align 8
@.str = private unnamed_addr constant [12 x i8] c"/dev/crypto\00", align 1
@O_RDWR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [9 x i8] c"open %zu\00", align 1
@CRYPTO_AES_CTR = common dso_local global i32 0, align 4
@CIOCGSESSION = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [17 x i8] c"CIOCGSESSION %zu\00", align 1
@COP_ENCRYPT = common dso_local global i32 0, align 4
@CIOCCRYPT = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [14 x i8] c"CIOCCRYPT %zu\00", align 1
@.str.4 = private unnamed_addr constant [22 x i8] c" Loc  Actual  Golden\0A\00", align 1
@.str.5 = private unnamed_addr constant [25 x i8] c"0x%2zu:  0x%2x    0x%2x\0A\00", align 1
@.str.6 = private unnamed_addr constant [24 x i8] c"verification failed %zu\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  %5 = alloca %struct.session_op, align 8
  %6 = alloca %struct.crypt_op, align 8
  %7 = alloca [36 x i8], align 16
  %8 = alloca i64, align 8
  store i32 0, i32* %1, align 4
  store i64 0, i64* %4, align 8
  br label %9

9:                                                ; preds = %133, %0
  %10 = load i64, i64* %4, align 8
  %11 = load %struct.TYPE_3__*, %struct.TYPE_3__** @tests, align 8
  %12 = call i64 @__arraycount(%struct.TYPE_3__* %11)
  %13 = icmp ult i64 %10, %12
  br i1 %13, label %14, label %136

14:                                               ; preds = %9
  %15 = load i32, i32* @O_RDWR, align 4
  %16 = call i32 @open(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32 %15, i32 0)
  store i32 %16, i32* %2, align 4
  %17 = load i32, i32* %2, align 4
  %18 = icmp slt i32 %17, 0
  br i1 %18, label %19, label %22

19:                                               ; preds = %14
  %20 = load i64, i64* %4, align 8
  %21 = call i32 @err(i32 1, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i64 %20)
  br label %22

22:                                               ; preds = %19, %14
  %23 = call i32 @memset(%struct.session_op* %5, i32 0, i32 64)
  %24 = load i32, i32* @CRYPTO_AES_CTR, align 4
  %25 = getelementptr inbounds %struct.session_op, %struct.session_op* %5, i32 0, i32 9
  store i32 %24, i32* %25, align 4
  %26 = load %struct.TYPE_3__*, %struct.TYPE_3__** @tests, align 8
  %27 = load i64, i64* %4, align 8
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i64 %27
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 5
  %30 = load i32, i32* %29, align 4
  %31 = getelementptr inbounds %struct.session_op, %struct.session_op* %5, i32 0, i32 8
  store i32 %30, i32* %31, align 8
  %32 = load %struct.TYPE_3__*, %struct.TYPE_3__** @tests, align 8
  %33 = load i64, i64* %4, align 8
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i64 %33
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i32 0, i32 4
  %36 = call i8* @__UNCONST(i32* %35)
  %37 = getelementptr inbounds %struct.session_op, %struct.session_op* %5, i32 0, i32 7
  store i8* %36, i8** %37, align 8
  %38 = load i32, i32* %2, align 4
  %39 = load i32, i32* @CIOCGSESSION, align 4
  %40 = call i32 @ioctl(i32 %38, i32 %39, %struct.session_op* %5)
  store i32 %40, i32* %3, align 4
  %41 = load i32, i32* %3, align 4
  %42 = icmp slt i32 %41, 0
  br i1 %42, label %43, label %46

43:                                               ; preds = %22
  %44 = load i64, i64* %4, align 8
  %45 = call i32 @err(i32 1, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i64 0, i64 0), i64 %44)
  br label %46

46:                                               ; preds = %43, %22
  %47 = bitcast %struct.crypt_op* %6 to %struct.session_op*
  %48 = call i32 @memset(%struct.session_op* %47, i32 0, i32 64)
  %49 = getelementptr inbounds %struct.session_op, %struct.session_op* %5, i32 0, i32 6
  %50 = load i32, i32* %49, align 4
  %51 = getelementptr inbounds %struct.crypt_op, %struct.crypt_op* %6, i32 0, i32 6
  store i32 %50, i32* %51, align 4
  %52 = load i32, i32* @COP_ENCRYPT, align 4
  %53 = getelementptr inbounds %struct.crypt_op, %struct.crypt_op* %6, i32 0, i32 5
  store i32 %52, i32* %53, align 8
  %54 = load %struct.TYPE_3__*, %struct.TYPE_3__** @tests, align 8
  %55 = load i64, i64* %4, align 8
  %56 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %54, i64 %55
  %57 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = getelementptr inbounds %struct.crypt_op, %struct.crypt_op* %6, i32 0, i32 0
  store i64 %58, i64* %59, align 8
  %60 = load %struct.TYPE_3__*, %struct.TYPE_3__** @tests, align 8
  %61 = load i64, i64* %4, align 8
  %62 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %60, i64 %61
  %63 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %62, i32 0, i32 3
  %64 = call i8* @__UNCONST(i32* %63)
  %65 = getelementptr inbounds %struct.crypt_op, %struct.crypt_op* %6, i32 0, i32 4
  store i8* %64, i8** %65, align 8
  %66 = getelementptr inbounds [36 x i8], [36 x i8]* %7, i64 0, i64 0
  %67 = getelementptr inbounds %struct.crypt_op, %struct.crypt_op* %6, i32 0, i32 1
  store i8* %66, i8** %67, align 8
  %68 = getelementptr inbounds %struct.crypt_op, %struct.crypt_op* %6, i32 0, i32 2
  store i32 36, i32* %68, align 8
  %69 = load %struct.TYPE_3__*, %struct.TYPE_3__** @tests, align 8
  %70 = load i64, i64* %4, align 8
  %71 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %69, i64 %70
  %72 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %71, i32 0, i32 2
  %73 = call i8* @__UNCONST(i32* %72)
  %74 = getelementptr inbounds %struct.crypt_op, %struct.crypt_op* %6, i32 0, i32 3
  store i8* %73, i8** %74, align 8
  %75 = load i32, i32* %2, align 4
  %76 = load i32, i32* @CIOCCRYPT, align 4
  %77 = bitcast %struct.crypt_op* %6 to %struct.session_op*
  %78 = call i32 @ioctl(i32 %75, i32 %76, %struct.session_op* %77)
  store i32 %78, i32* %3, align 4
  %79 = load i32, i32* %3, align 4
  %80 = icmp slt i32 %79, 0
  br i1 %80, label %81, label %84

81:                                               ; preds = %46
  %82 = load i64, i64* %4, align 8
  %83 = call i32 @err(i32 1, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i64 0, i64 0), i64 %82)
  br label %84

84:                                               ; preds = %81, %46
  %85 = getelementptr inbounds %struct.crypt_op, %struct.crypt_op* %6, i32 0, i32 1
  %86 = load i8*, i8** %85, align 8
  %87 = load %struct.TYPE_3__*, %struct.TYPE_3__** @tests, align 8
  %88 = load i64, i64* %4, align 8
  %89 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %87, i64 %88
  %90 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %89, i32 0, i32 1
  %91 = load i32*, i32** %90, align 8
  %92 = load %struct.TYPE_3__*, %struct.TYPE_3__** @tests, align 8
  %93 = load i64, i64* %4, align 8
  %94 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %92, i64 %93
  %95 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %94, i32 0, i32 0
  %96 = load i64, i64* %95, align 8
  %97 = call i64 @memcmp(i8* %86, i32* %91, i64 %96)
  %98 = icmp ne i64 %97, 0
  br i1 %98, label %99, label %130

99:                                               ; preds = %84
  %100 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.4, i64 0, i64 0))
  store i64 0, i64* %8, align 8
  br label %101

101:                                              ; preds = %124, %99
  %102 = load i64, i64* %8, align 8
  %103 = load %struct.TYPE_3__*, %struct.TYPE_3__** @tests, align 8
  %104 = load i64, i64* %4, align 8
  %105 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %103, i64 %104
  %106 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %105, i32 0, i32 0
  %107 = load i64, i64* %106, align 8
  %108 = icmp ult i64 %102, %107
  br i1 %108, label %109, label %127

109:                                              ; preds = %101
  %110 = load i64, i64* %8, align 8
  %111 = load i64, i64* %8, align 8
  %112 = getelementptr inbounds [36 x i8], [36 x i8]* %7, i64 0, i64 %111
  %113 = load i8, i8* %112, align 1
  %114 = zext i8 %113 to i32
  %115 = load %struct.TYPE_3__*, %struct.TYPE_3__** @tests, align 8
  %116 = load i64, i64* %4, align 8
  %117 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %115, i64 %116
  %118 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %117, i32 0, i32 1
  %119 = load i32*, i32** %118, align 8
  %120 = load i64, i64* %8, align 8
  %121 = getelementptr inbounds i32, i32* %119, i64 %120
  %122 = load i32, i32* %121, align 4
  %123 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.5, i64 0, i64 0), i64 %110, i32 %114, i32 %122)
  br label %124

124:                                              ; preds = %109
  %125 = load i64, i64* %8, align 8
  %126 = add i64 %125, 1
  store i64 %126, i64* %8, align 8
  br label %101

127:                                              ; preds = %101
  %128 = load i64, i64* %4, align 8
  %129 = call i32 @warnx(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.6, i64 0, i64 0), i64 %128)
  br label %130

130:                                              ; preds = %127, %84
  %131 = load i32, i32* %2, align 4
  %132 = call i32 @close(i32 %131)
  br label %133

133:                                              ; preds = %130
  %134 = load i64, i64* %4, align 8
  %135 = add i64 %134, 1
  store i64 %135, i64* %4, align 8
  br label %9

136:                                              ; preds = %9
  ret i32 0
}

declare dso_local i64 @__arraycount(%struct.TYPE_3__*) #1

declare dso_local i32 @open(i8*, i32, i32) #1

declare dso_local i32 @err(i32, i8*, i64) #1

declare dso_local i32 @memset(%struct.session_op*, i32, i32) #1

declare dso_local i8* @__UNCONST(i32*) #1

declare dso_local i32 @ioctl(i32, i32, %struct.session_op*) #1

declare dso_local i64 @memcmp(i8*, i32*, i64) #1

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i32 @warnx(i8*, i64) #1

declare dso_local i32 @close(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
