; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libsecureboot/efi/extr_efi_variables.c_efi_get_certs.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libsecureboot/efi/extr_efi_variables.c_efi_get_certs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i64, i32* }
%struct.TYPE_9__ = type { i64, i32, i64, i32 }
%struct.TYPE_10__ = type { i32 }

@ImageSecurityDatabaseGUID = common dso_local global i32 0, align 4
@EFI_BUFFER_TOO_SMALL = common dso_local global i64 0, align 8
@EFI_SUCCESS = common dso_local global i64 0, align 8
@efiCertX509GUID = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_8__* (i8*, i64*)* @efi_get_certs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_8__* @efi_get_certs(i8* %0, i64* %1) #0 {
  %3 = alloca %struct.TYPE_8__*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i64*, align 8
  %6 = alloca %struct.TYPE_8__*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.TYPE_9__*, align 8
  %9 = alloca %struct.TYPE_10__*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  store i8* %0, i8** %4, align 8
  store i64* %1, i64** %5, align 8
  store i32* null, i32** %7, align 8
  store %struct.TYPE_8__* null, %struct.TYPE_8__** %6, align 8
  store i64 0, i64* %10, align 8
  store i32 0, i32* %11, align 4
  %13 = load i8*, i8** %4, align 8
  %14 = load i32*, i32** %7, align 8
  %15 = call i64 @efi_getenv(i32* @ImageSecurityDatabaseGUID, i8* %13, i32* %14, i64* %10)
  store i64 %15, i64* %12, align 8
  %16 = load i64, i64* %12, align 8
  %17 = load i64, i64* @EFI_BUFFER_TOO_SMALL, align 8
  %18 = icmp ne i64 %16, %17
  br i1 %18, label %19, label %20

19:                                               ; preds = %2
  store %struct.TYPE_8__* null, %struct.TYPE_8__** %3, align 8
  br label %151

20:                                               ; preds = %2
  %21 = load i64, i64* %10, align 8
  %22 = call i8* @malloc(i64 %21)
  %23 = bitcast i8* %22 to i32*
  store i32* %23, i32** %7, align 8
  %24 = load i32*, i32** %7, align 8
  %25 = icmp eq i32* %24, null
  br i1 %25, label %26, label %27

26:                                               ; preds = %20
  store %struct.TYPE_8__* null, %struct.TYPE_8__** %3, align 8
  br label %151

27:                                               ; preds = %20
  %28 = load i8*, i8** %4, align 8
  %29 = load i32*, i32** %7, align 8
  %30 = call i64 @efi_getenv(i32* @ImageSecurityDatabaseGUID, i8* %28, i32* %29, i64* %10)
  store i64 %30, i64* %12, align 8
  %31 = load i64, i64* %12, align 8
  %32 = load i64, i64* @EFI_SUCCESS, align 8
  %33 = icmp ne i64 %31, %32
  br i1 %33, label %34, label %35

34:                                               ; preds = %27
  br label %145

35:                                               ; preds = %27
  %36 = load i32*, i32** %7, align 8
  %37 = bitcast i32* %36 to %struct.TYPE_9__*
  store %struct.TYPE_9__* %37, %struct.TYPE_9__** %8, align 8
  br label %38

38:                                               ; preds = %125, %35
  %39 = load i64, i64* %10, align 8
  %40 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %41 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = icmp uge i64 %39, %42
  br i1 %43, label %44, label %47

44:                                               ; preds = %38
  %45 = load i64, i64* %10, align 8
  %46 = icmp ugt i64 %45, 0
  br label %47

47:                                               ; preds = %44, %38
  %48 = phi i1 [ false, %38 ], [ %46, %44 ]
  br i1 %48, label %49, label %138

49:                                               ; preds = %47
  %50 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %51 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %50, i32 0, i32 3
  %52 = call i64 @memcmp(i32* @efiCertX509GUID, i32* %51, i32 4)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %55

54:                                               ; preds = %49
  br label %125

55:                                               ; preds = %49
  %56 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %57 = bitcast %struct.TYPE_9__* %56 to i32*
  %58 = getelementptr inbounds i32, i32* %57, i64 32
  %59 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %60 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 8
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds i32, i32* %58, i64 %62
  %64 = bitcast i32* %63 to %struct.TYPE_10__*
  store %struct.TYPE_10__* %64, %struct.TYPE_10__** %9, align 8
  %65 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %66 = load i32, i32* %11, align 4
  %67 = add nsw i32 %66, 1
  %68 = sext i32 %67 to i64
  %69 = mul i64 %68, 16
  %70 = trunc i64 %69 to i32
  %71 = call %struct.TYPE_8__* @realloc(%struct.TYPE_8__* %65, i32 %70)
  store %struct.TYPE_8__* %71, %struct.TYPE_8__** %6, align 8
  %72 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %73 = icmp eq %struct.TYPE_8__* %72, null
  br i1 %73, label %74, label %75

74:                                               ; preds = %55
  store i32 0, i32* %11, align 4
  br label %145

75:                                               ; preds = %55
  %76 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %77 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %76, i32 0, i32 2
  %78 = load i64, i64* %77, align 8
  %79 = sub i64 %78, 4
  %80 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %81 = load i32, i32* %11, align 4
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %80, i64 %82
  %84 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %83, i32 0, i32 0
  store i64 %79, i64* %84, align 8
  %85 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %86 = load i32, i32* %11, align 4
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %85, i64 %87
  %89 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %88, i32 0, i32 0
  %90 = load i64, i64* %89, align 8
  %91 = call i8* @malloc(i64 %90)
  %92 = bitcast i8* %91 to i32*
  %93 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %94 = load i32, i32* %11, align 4
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %93, i64 %95
  %97 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %96, i32 0, i32 1
  store i32* %92, i32** %97, align 8
  %98 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %99 = load i32, i32* %11, align 4
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %98, i64 %100
  %102 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %101, i32 0, i32 1
  %103 = load i32*, i32** %102, align 8
  %104 = icmp eq i32* %103, null
  br i1 %104, label %105, label %106

105:                                              ; preds = %75
  br label %145

106:                                              ; preds = %75
  %107 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %108 = load i32, i32* %11, align 4
  %109 = sext i32 %108 to i64
  %110 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %107, i64 %109
  %111 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %110, i32 0, i32 1
  %112 = load i32*, i32** %111, align 8
  %113 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %114 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 4
  %116 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %117 = load i32, i32* %11, align 4
  %118 = sext i32 %117 to i64
  %119 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %116, i64 %118
  %120 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %119, i32 0, i32 0
  %121 = load i64, i64* %120, align 8
  %122 = call i32 @memcpy(i32* %112, i32 %115, i64 %121)
  %123 = load i32, i32* %11, align 4
  %124 = add nsw i32 %123, 1
  store i32 %124, i32* %11, align 4
  br label %125

125:                                              ; preds = %106, %54
  %126 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %127 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %126, i32 0, i32 0
  %128 = load i64, i64* %127, align 8
  %129 = load i64, i64* %10, align 8
  %130 = sub i64 %129, %128
  store i64 %130, i64* %10, align 8
  %131 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %132 = bitcast %struct.TYPE_9__* %131 to i32*
  %133 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %134 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %133, i32 0, i32 0
  %135 = load i64, i64* %134, align 8
  %136 = getelementptr inbounds i32, i32* %132, i64 %135
  %137 = bitcast i32* %136 to %struct.TYPE_9__*
  store %struct.TYPE_9__* %137, %struct.TYPE_9__** %8, align 8
  br label %38

138:                                              ; preds = %47
  %139 = load i32, i32* %11, align 4
  %140 = sext i32 %139 to i64
  %141 = load i64*, i64** %5, align 8
  store i64 %140, i64* %141, align 8
  %142 = load i32*, i32** %7, align 8
  %143 = call i32 @xfree(i32* %142)
  %144 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  store %struct.TYPE_8__* %144, %struct.TYPE_8__** %3, align 8
  br label %151

145:                                              ; preds = %105, %74, %34
  %146 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %147 = load i32, i32* %11, align 4
  %148 = call i32 @free_certificates(%struct.TYPE_8__* %146, i32 %147)
  %149 = load i32*, i32** %7, align 8
  %150 = call i32 @xfree(i32* %149)
  store %struct.TYPE_8__* null, %struct.TYPE_8__** %3, align 8
  br label %151

151:                                              ; preds = %145, %138, %26, %19
  %152 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  ret %struct.TYPE_8__* %152
}

declare dso_local i64 @efi_getenv(i32*, i8*, i32*, i64*) #1

declare dso_local i8* @malloc(i64) #1

declare dso_local i64 @memcmp(i32*, i32*, i32) #1

declare dso_local %struct.TYPE_8__* @realloc(%struct.TYPE_8__*, i32) #1

declare dso_local i32 @memcpy(i32*, i32, i64) #1

declare dso_local i32 @xfree(i32*) #1

declare dso_local i32 @free_certificates(%struct.TYPE_8__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
