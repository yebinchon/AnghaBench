; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssl/ssl/statem/extr_statem_lib.c_create_synthetic_message_hash.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssl/ssl/statem/extr_statem_lib.c_create_synthetic_message_hash.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { %struct.TYPE_12__*, %struct.TYPE_10__* }
%struct.TYPE_12__ = type { %struct.TYPE_11__ }
%struct.TYPE_11__ = type { i32 }
%struct.TYPE_10__ = type { i64 }

@EVP_MAX_MD_SIZE = common dso_local global i32 0, align 4
@SSL3_HM_HEADER_LENGTH = common dso_local global i32 0, align 4
@SSL3_MT_MESSAGE_HASH = common dso_local global i8 0, align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @create_synthetic_message_hash(%struct.TYPE_13__* %0, i8* %1, i64 %2, i8* %3, i64 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_13__*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  store %struct.TYPE_13__* %0, %struct.TYPE_13__** %7, align 8
  store i8* %1, i8** %8, align 8
  store i64 %2, i64* %9, align 8
  store i8* %3, i8** %10, align 8
  store i64 %4, i64* %11, align 8
  %16 = load i32, i32* @EVP_MAX_MD_SIZE, align 4
  %17 = zext i32 %16 to i64
  %18 = call i8* @llvm.stacksave()
  store i8* %18, i8** %12, align 8
  %19 = alloca i8, i64 %17, align 16
  store i64 %17, i64* %13, align 8
  %20 = load i32, i32* @SSL3_HM_HEADER_LENGTH, align 4
  %21 = zext i32 %20 to i64
  %22 = alloca i8, i64 %21, align 16
  store i64 %21, i64* %14, align 8
  %23 = trunc i64 %21 to i32
  %24 = call i32 @memset(i8* %22, i32 0, i32 %23)
  %25 = load i8*, i8** %8, align 8
  %26 = icmp eq i8* %25, null
  br i1 %26, label %27, label %38

27:                                               ; preds = %5
  store i8* %19, i8** %8, align 8
  store i64 0, i64* %9, align 8
  %28 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %29 = call i32 @ssl3_digest_cached_records(%struct.TYPE_13__* %28, i32 0)
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %36

31:                                               ; preds = %27
  %32 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %33 = trunc i64 %17 to i32
  %34 = call i32 @ssl_handshake_hash(%struct.TYPE_13__* %32, i8* %19, i32 %33, i64* %9)
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %37, label %36

36:                                               ; preds = %31, %27
  store i32 0, i32* %6, align 4
  store i32 1, i32* %15, align 4
  br label %94

37:                                               ; preds = %31
  br label %38

38:                                               ; preds = %37, %5
  %39 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %40 = call i32 @ssl3_init_finished_mac(%struct.TYPE_13__* %39)
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %43, label %42

42:                                               ; preds = %38
  store i32 0, i32* %6, align 4
  store i32 1, i32* %15, align 4
  br label %94

43:                                               ; preds = %38
  %44 = load i8, i8* @SSL3_MT_MESSAGE_HASH, align 1
  %45 = getelementptr inbounds i8, i8* %22, i64 0
  store i8 %44, i8* %45, align 16
  %46 = load i64, i64* %9, align 8
  %47 = trunc i64 %46 to i8
  %48 = load i32, i32* @SSL3_HM_HEADER_LENGTH, align 4
  %49 = sub nsw i32 %48, 1
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds i8, i8* %22, i64 %50
  store i8 %47, i8* %51, align 1
  %52 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %53 = load i32, i32* @SSL3_HM_HEADER_LENGTH, align 4
  %54 = call i32 @ssl3_finish_mac(%struct.TYPE_13__* %52, i8* %22, i32 %53)
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %63

56:                                               ; preds = %43
  %57 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %58 = load i8*, i8** %8, align 8
  %59 = load i64, i64* %9, align 8
  %60 = trunc i64 %59 to i32
  %61 = call i32 @ssl3_finish_mac(%struct.TYPE_13__* %57, i8* %58, i32 %60)
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %64, label %63

63:                                               ; preds = %56, %43
  store i32 0, i32* %6, align 4
  store i32 1, i32* %15, align 4
  br label %94

64:                                               ; preds = %56
  %65 = load i8*, i8** %10, align 8
  %66 = icmp ne i8* %65, null
  br i1 %66, label %67, label %93

67:                                               ; preds = %64
  %68 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %69 = load i8*, i8** %10, align 8
  %70 = load i64, i64* %11, align 8
  %71 = trunc i64 %70 to i32
  %72 = call i32 @ssl3_finish_mac(%struct.TYPE_13__* %68, i8* %69, i32 %71)
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %92

74:                                               ; preds = %67
  %75 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %76 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %77 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %76, i32 0, i32 1
  %78 = load %struct.TYPE_10__*, %struct.TYPE_10__** %77, align 8
  %79 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %78, i32 0, i32 0
  %80 = load i64, i64* %79, align 8
  %81 = inttoptr i64 %80 to i8*
  %82 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %83 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %82, i32 0, i32 0
  %84 = load %struct.TYPE_12__*, %struct.TYPE_12__** %83, align 8
  %85 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %84, i32 0, i32 0
  %86 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 4
  %88 = load i32, i32* @SSL3_HM_HEADER_LENGTH, align 4
  %89 = add nsw i32 %87, %88
  %90 = call i32 @ssl3_finish_mac(%struct.TYPE_13__* %75, i8* %81, i32 %89)
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %93, label %92

92:                                               ; preds = %74, %67
  store i32 0, i32* %6, align 4
  store i32 1, i32* %15, align 4
  br label %94

93:                                               ; preds = %74, %64
  store i32 1, i32* %6, align 4
  store i32 1, i32* %15, align 4
  br label %94

94:                                               ; preds = %93, %92, %63, %42, %36
  %95 = load i8*, i8** %12, align 8
  call void @llvm.stackrestore(i8* %95)
  %96 = load i32, i32* %6, align 4
  ret i32 %96
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @memset(i8*, i32, i32) #2

declare dso_local i32 @ssl3_digest_cached_records(%struct.TYPE_13__*, i32) #2

declare dso_local i32 @ssl_handshake_hash(%struct.TYPE_13__*, i8*, i32, i64*) #2

declare dso_local i32 @ssl3_init_finished_mac(%struct.TYPE_13__*) #2

declare dso_local i32 @ssl3_finish_mac(%struct.TYPE_13__*, i8*, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
