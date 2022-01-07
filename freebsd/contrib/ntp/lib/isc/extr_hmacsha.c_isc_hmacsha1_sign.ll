; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ntp/lib/isc/extr_hmacsha.c_isc_hmacsha1_sign.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ntp/lib/isc/extr_hmacsha.c_isc_hmacsha1_sign.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i8*, i32 }

@ISC_SHA1_BLOCK_LENGTH = common dso_local global i32 0, align 4
@ISC_SHA1_DIGESTLENGTH = common dso_local global i32 0, align 4
@OPAD = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @isc_hmacsha1_sign(%struct.TYPE_4__* %0, i8* %1, i64 %2) #0 {
  %4 = alloca %struct.TYPE_4__*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %4, align 8
  store i8* %1, i8** %5, align 8
  store i64 %2, i64* %6, align 8
  %11 = load i32, i32* @ISC_SHA1_BLOCK_LENGTH, align 4
  %12 = zext i32 %11 to i64
  %13 = call i8* @llvm.stacksave()
  store i8* %13, i8** %7, align 8
  %14 = alloca i8, i64 %12, align 16
  store i64 %12, i64* %8, align 8
  %15 = load i32, i32* @ISC_SHA1_DIGESTLENGTH, align 4
  %16 = zext i32 %15 to i64
  %17 = alloca i8, i64 %16, align 16
  store i64 %16, i64* %9, align 8
  %18 = load i64, i64* %6, align 8
  %19 = load i32, i32* @ISC_SHA1_DIGESTLENGTH, align 4
  %20 = sext i32 %19 to i64
  %21 = icmp ule i64 %18, %20
  %22 = zext i1 %21 to i32
  %23 = call i32 @REQUIRE(i32 %22)
  %24 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 1
  %26 = call i32 @isc_sha1_final(i32* %25, i8* %17)
  %27 = load i32, i32* @OPAD, align 4
  %28 = trunc i64 %12 to i32
  %29 = call i32 @memset(i8* %14, i32 %27, i32 %28)
  store i32 0, i32* %10, align 4
  br label %30

30:                                               ; preds = %50, %3
  %31 = load i32, i32* %10, align 4
  %32 = load i32, i32* @ISC_SHA1_BLOCK_LENGTH, align 4
  %33 = icmp ult i32 %31, %32
  br i1 %33, label %34, label %53

34:                                               ; preds = %30
  %35 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 0
  %37 = load i8*, i8** %36, align 8
  %38 = load i32, i32* %10, align 4
  %39 = zext i32 %38 to i64
  %40 = getelementptr inbounds i8, i8* %37, i64 %39
  %41 = load i8, i8* %40, align 1
  %42 = zext i8 %41 to i32
  %43 = load i32, i32* %10, align 4
  %44 = zext i32 %43 to i64
  %45 = getelementptr inbounds i8, i8* %14, i64 %44
  %46 = load i8, i8* %45, align 1
  %47 = zext i8 %46 to i32
  %48 = xor i32 %47, %42
  %49 = trunc i32 %48 to i8
  store i8 %49, i8* %45, align 1
  br label %50

50:                                               ; preds = %34
  %51 = load i32, i32* %10, align 4
  %52 = add i32 %51, 1
  store i32 %52, i32* %10, align 4
  br label %30

53:                                               ; preds = %30
  %54 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %55 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %54, i32 0, i32 1
  %56 = call i32 @isc_sha1_init(i32* %55)
  %57 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %58 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %57, i32 0, i32 1
  %59 = trunc i64 %12 to i32
  %60 = call i32 @isc_sha1_update(i32* %58, i8* %14, i32 %59)
  %61 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %62 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %61, i32 0, i32 1
  %63 = load i32, i32* @ISC_SHA1_DIGESTLENGTH, align 4
  %64 = call i32 @isc_sha1_update(i32* %62, i8* %17, i32 %63)
  %65 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %66 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %65, i32 0, i32 1
  %67 = call i32 @isc_sha1_final(i32* %66, i8* %17)
  %68 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %69 = call i32 @isc_hmacsha1_invalidate(%struct.TYPE_4__* %68)
  %70 = load i8*, i8** %5, align 8
  %71 = load i64, i64* %6, align 8
  %72 = call i32 @memcpy(i8* %70, i8* %17, i64 %71)
  %73 = trunc i64 %16 to i32
  %74 = call i32 @memset(i8* %17, i32 0, i32 %73)
  %75 = load i8*, i8** %7, align 8
  call void @llvm.stackrestore(i8* %75)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @REQUIRE(i32) #2

declare dso_local i32 @isc_sha1_final(i32*, i8*) #2

declare dso_local i32 @memset(i8*, i32, i32) #2

declare dso_local i32 @isc_sha1_init(i32*) #2

declare dso_local i32 @isc_sha1_update(i32*, i8*, i32) #2

declare dso_local i32 @isc_hmacsha1_invalidate(%struct.TYPE_4__*) #2

declare dso_local i32 @memcpy(i8*, i8*, i64) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
