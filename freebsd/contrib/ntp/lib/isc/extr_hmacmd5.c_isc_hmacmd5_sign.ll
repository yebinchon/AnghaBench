; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ntp/lib/isc/extr_hmacmd5.c_isc_hmacmd5_sign.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ntp/lib/isc/extr_hmacmd5.c_isc_hmacmd5_sign.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i8*, i32 }

@PADLEN = common dso_local global i32 0, align 4
@OPAD = common dso_local global i32 0, align 4
@ISC_MD5_DIGESTLENGTH = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @isc_hmacmd5_sign(%struct.TYPE_4__* %0, i8* %1) #0 {
  %3 = alloca %struct.TYPE_4__*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %3, align 8
  store i8* %1, i8** %4, align 8
  %8 = load i32, i32* @PADLEN, align 4
  %9 = zext i32 %8 to i64
  %10 = call i8* @llvm.stacksave()
  store i8* %10, i8** %5, align 8
  %11 = alloca i8, i64 %9, align 16
  store i64 %9, i64* %6, align 8
  %12 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 1
  %14 = load i8*, i8** %4, align 8
  %15 = call i32 @isc_md5_final(i32* %13, i8* %14)
  %16 = load i32, i32* @OPAD, align 4
  %17 = trunc i64 %9 to i32
  %18 = call i32 @memset(i8* %11, i32 %16, i32 %17)
  store i32 0, i32* %7, align 4
  br label %19

19:                                               ; preds = %39, %2
  %20 = load i32, i32* %7, align 4
  %21 = load i32, i32* @PADLEN, align 4
  %22 = icmp slt i32 %20, %21
  br i1 %22, label %23, label %42

23:                                               ; preds = %19
  %24 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 0
  %26 = load i8*, i8** %25, align 8
  %27 = load i32, i32* %7, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds i8, i8* %26, i64 %28
  %30 = load i8, i8* %29, align 1
  %31 = zext i8 %30 to i32
  %32 = load i32, i32* %7, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds i8, i8* %11, i64 %33
  %35 = load i8, i8* %34, align 1
  %36 = zext i8 %35 to i32
  %37 = xor i32 %36, %31
  %38 = trunc i32 %37 to i8
  store i8 %38, i8* %34, align 1
  br label %39

39:                                               ; preds = %23
  %40 = load i32, i32* %7, align 4
  %41 = add nsw i32 %40, 1
  store i32 %41, i32* %7, align 4
  br label %19

42:                                               ; preds = %19
  %43 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 1
  %45 = call i32 @isc_md5_init(i32* %44)
  %46 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i32 0, i32 1
  %48 = trunc i64 %9 to i32
  %49 = call i32 @isc_md5_update(i32* %47, i8* %11, i32 %48)
  %50 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %50, i32 0, i32 1
  %52 = load i8*, i8** %4, align 8
  %53 = load i32, i32* @ISC_MD5_DIGESTLENGTH, align 4
  %54 = call i32 @isc_md5_update(i32* %51, i8* %52, i32 %53)
  %55 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %56 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %55, i32 0, i32 1
  %57 = load i8*, i8** %4, align 8
  %58 = call i32 @isc_md5_final(i32* %56, i8* %57)
  %59 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %60 = call i32 @isc_hmacmd5_invalidate(%struct.TYPE_4__* %59)
  %61 = load i8*, i8** %5, align 8
  call void @llvm.stackrestore(i8* %61)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @isc_md5_final(i32*, i8*) #2

declare dso_local i32 @memset(i8*, i32, i32) #2

declare dso_local i32 @isc_md5_init(i32*) #2

declare dso_local i32 @isc_md5_update(i32*, i8*, i32) #2

declare dso_local i32 @isc_hmacmd5_invalidate(%struct.TYPE_4__*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
