; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libsecureboot/efi/extr_efi_variables.c_efi_get_forbidden_digests.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libsecureboot/efi/extr_efi_variables.c_efi_get_forbidden_digests.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i64, %struct.TYPE_11__* }
%struct.TYPE_12__ = type { i64, i32, i32, i32 }
%struct.TYPE_13__ = type { i32 }

@ImageSecurityDatabaseGUID = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"dbx\00", align 1
@EFI_BUFFER_TOO_SMALL = common dso_local global i64 0, align 8
@EFI_SUCCESS = common dso_local global i64 0, align 8
@efiCertX509Sha256GUID = common dso_local global i32 0, align 4
@br_sha256_SIZE = common dso_local global i64 0, align 8
@efiCertX509Sha384GUID = common dso_local global i32 0, align 4
@br_sha384_SIZE = common dso_local global i64 0, align 8
@efiCertX509Sha5122UID = common dso_local global i32 0, align 4
@br_sha512_SIZE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_11__* @efi_get_forbidden_digests(i64* %0) #0 {
  %2 = alloca %struct.TYPE_11__*, align 8
  %3 = alloca i64*, align 8
  %4 = alloca %struct.TYPE_11__*, align 8
  %5 = alloca %struct.TYPE_11__*, align 8
  %6 = alloca %struct.TYPE_12__*, align 8
  %7 = alloca %struct.TYPE_13__*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  store i64* %0, i64** %3, align 8
  store i64 0, i64* %8, align 8
  store i32 0, i32* %11, align 4
  store %struct.TYPE_11__* null, %struct.TYPE_11__** %4, align 8
  store %struct.TYPE_11__* null, %struct.TYPE_11__** %5, align 8
  %14 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %15 = call i64 @efi_getenv(i32* @ImageSecurityDatabaseGUID, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), %struct.TYPE_11__* %14, i64* %8)
  store i64 %15, i64* %13, align 8
  %16 = load i64, i64* %13, align 8
  %17 = load i64, i64* @EFI_BUFFER_TOO_SMALL, align 8
  %18 = icmp ne i64 %16, %17
  br i1 %18, label %19, label %20

19:                                               ; preds = %1
  store %struct.TYPE_11__* null, %struct.TYPE_11__** %2, align 8
  br label %195

20:                                               ; preds = %1
  %21 = load i64, i64* %8, align 8
  %22 = call i8* @malloc(i64 %21)
  %23 = bitcast i8* %22 to %struct.TYPE_11__*
  store %struct.TYPE_11__* %23, %struct.TYPE_11__** %4, align 8
  %24 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %25 = icmp eq %struct.TYPE_11__* %24, null
  br i1 %25, label %26, label %27

26:                                               ; preds = %20
  store %struct.TYPE_11__* null, %struct.TYPE_11__** %2, align 8
  br label %195

27:                                               ; preds = %20
  %28 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %29 = call i64 @efi_getenv(i32* @ImageSecurityDatabaseGUID, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), %struct.TYPE_11__* %28, i64* %8)
  store i64 %29, i64* %13, align 8
  %30 = load i64, i64* %13, align 8
  %31 = load i64, i64* @EFI_SUCCESS, align 8
  %32 = icmp ne i64 %30, %31
  br i1 %32, label %33, label %34

33:                                               ; preds = %27
  br label %177

34:                                               ; preds = %27
  %35 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %36 = bitcast %struct.TYPE_11__* %35 to %struct.TYPE_12__*
  store %struct.TYPE_12__* %36, %struct.TYPE_12__** %6, align 8
  br label %37

37:                                               ; preds = %153, %34
  %38 = load i64, i64* %8, align 8
  %39 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %40 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = icmp uge i64 %38, %41
  br i1 %42, label %43, label %46

43:                                               ; preds = %37
  %44 = load i64, i64* %8, align 8
  %45 = icmp ugt i64 %44, 0
  br label %46

46:                                               ; preds = %43, %37
  %47 = phi i1 [ false, %37 ], [ %45, %43 ]
  br i1 %47, label %48, label %166

48:                                               ; preds = %46
  %49 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %50 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %49, i32 0, i32 3
  %51 = call i64 @memcmp(i32* @efiCertX509Sha256GUID, i32* %50, i32 4)
  %52 = icmp eq i64 %51, 0
  br i1 %52, label %53, label %55

53:                                               ; preds = %48
  %54 = load i64, i64* @br_sha256_SIZE, align 8
  store i64 %54, i64* %10, align 8
  br label %72

55:                                               ; preds = %48
  %56 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %57 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %56, i32 0, i32 3
  %58 = call i64 @memcmp(i32* @efiCertX509Sha384GUID, i32* %57, i32 4)
  %59 = icmp eq i64 %58, 0
  br i1 %59, label %60, label %62

60:                                               ; preds = %55
  %61 = load i64, i64* @br_sha384_SIZE, align 8
  store i64 %61, i64* %10, align 8
  br label %71

62:                                               ; preds = %55
  %63 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %64 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %63, i32 0, i32 3
  %65 = call i64 @memcmp(i32* @efiCertX509Sha5122UID, i32* %64, i32 4)
  %66 = icmp eq i64 %65, 0
  br i1 %66, label %67, label %69

67:                                               ; preds = %62
  %68 = load i64, i64* @br_sha512_SIZE, align 8
  store i64 %68, i64* %10, align 8
  br label %70

69:                                               ; preds = %62
  br label %153

70:                                               ; preds = %67
  br label %71

71:                                               ; preds = %70, %60
  br label %72

72:                                               ; preds = %71, %53
  %73 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %74 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 8
  %76 = sext i32 %75 to i64
  %77 = add i64 24, %76
  store i64 %77, i64* %9, align 8
  %78 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %79 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %78, i32 0, i32 0
  %80 = load i64, i64* %79, align 8
  %81 = load i64, i64* %9, align 8
  %82 = sub i64 %80, %81
  %83 = trunc i64 %82 to i32
  store i32 %83, i32* %12, align 4
  %84 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %85 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %84, i32 0, i32 2
  %86 = load i32, i32* %85, align 4
  %87 = load i32, i32* %12, align 4
  %88 = sdiv i32 %87, %86
  store i32 %88, i32* %12, align 4
  %89 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %90 = bitcast %struct.TYPE_12__* %89 to %struct.TYPE_11__*
  %91 = load i64, i64* %9, align 8
  %92 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %90, i64 %91
  %93 = bitcast %struct.TYPE_11__* %92 to %struct.TYPE_13__*
  store %struct.TYPE_13__* %93, %struct.TYPE_13__** %7, align 8
  br label %94

94:                                               ; preds = %126, %72
  %95 = load i32, i32* %12, align 4
  %96 = add nsw i32 %95, -1
  store i32 %96, i32* %12, align 4
  %97 = icmp sgt i32 %95, 0
  br i1 %97, label %98, label %152

98:                                               ; preds = %94
  %99 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %100 = load i32, i32* %11, align 4
  %101 = add nsw i32 %100, 1
  %102 = sext i32 %101 to i64
  %103 = mul i64 %102, 16
  %104 = trunc i64 %103 to i32
  %105 = call %struct.TYPE_11__* @realloc(%struct.TYPE_11__* %99, i32 %104)
  store %struct.TYPE_11__* %105, %struct.TYPE_11__** %5, align 8
  %106 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %107 = icmp eq %struct.TYPE_11__* %106, null
  br i1 %107, label %108, label %109

108:                                              ; preds = %98
  store i32 0, i32* %11, align 4
  br label %177

109:                                              ; preds = %98
  %110 = load i64, i64* %10, align 8
  %111 = call i8* @malloc(i64 %110)
  %112 = bitcast i8* %111 to %struct.TYPE_11__*
  %113 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %114 = load i32, i32* %11, align 4
  %115 = sext i32 %114 to i64
  %116 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %113, i64 %115
  %117 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %116, i32 0, i32 1
  store %struct.TYPE_11__* %112, %struct.TYPE_11__** %117, align 8
  %118 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %119 = load i32, i32* %11, align 4
  %120 = sext i32 %119 to i64
  %121 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %118, i64 %120
  %122 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %121, i32 0, i32 1
  %123 = load %struct.TYPE_11__*, %struct.TYPE_11__** %122, align 8
  %124 = icmp eq %struct.TYPE_11__* %123, null
  br i1 %124, label %125, label %126

125:                                              ; preds = %109
  br label %177

126:                                              ; preds = %109
  %127 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %128 = load i32, i32* %11, align 4
  %129 = sext i32 %128 to i64
  %130 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %127, i64 %129
  %131 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %130, i32 0, i32 1
  %132 = load %struct.TYPE_11__*, %struct.TYPE_11__** %131, align 8
  %133 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %134 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %133, i32 0, i32 0
  %135 = load i32, i32* %134, align 4
  %136 = load i64, i64* %10, align 8
  %137 = call i32 @memcpy(%struct.TYPE_11__* %132, i32 %135, i64 %136)
  %138 = load i64, i64* %10, align 8
  %139 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %140 = load i32, i32* %11, align 4
  %141 = sext i32 %140 to i64
  %142 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %139, i64 %141
  %143 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %142, i32 0, i32 0
  store i64 %138, i64* %143, align 8
  %144 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %145 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %146 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %145, i32 0, i32 2
  %147 = load i32, i32* %146, align 4
  %148 = sext i32 %147 to i64
  %149 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %144, i64 %148
  store %struct.TYPE_13__* %149, %struct.TYPE_13__** %7, align 8
  %150 = load i32, i32* %11, align 4
  %151 = add nsw i32 %150, 1
  store i32 %151, i32* %11, align 4
  br label %94

152:                                              ; preds = %94
  br label %153

153:                                              ; preds = %152, %69
  %154 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %155 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %154, i32 0, i32 0
  %156 = load i64, i64* %155, align 8
  %157 = load i64, i64* %8, align 8
  %158 = sub i64 %157, %156
  store i64 %158, i64* %8, align 8
  %159 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %160 = bitcast %struct.TYPE_12__* %159 to %struct.TYPE_11__*
  %161 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %162 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %161, i32 0, i32 0
  %163 = load i64, i64* %162, align 8
  %164 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %160, i64 %163
  %165 = bitcast %struct.TYPE_11__* %164 to %struct.TYPE_12__*
  store %struct.TYPE_12__* %165, %struct.TYPE_12__** %6, align 8
  br label %37

166:                                              ; preds = %46
  %167 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %168 = call i32 @xfree(%struct.TYPE_11__* %167)
  %169 = load i64*, i64** %3, align 8
  %170 = icmp ne i64* %169, null
  br i1 %170, label %171, label %175

171:                                              ; preds = %166
  %172 = load i32, i32* %11, align 4
  %173 = sext i32 %172 to i64
  %174 = load i64*, i64** %3, align 8
  store i64 %173, i64* %174, align 8
  br label %175

175:                                              ; preds = %171, %166
  %176 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  store %struct.TYPE_11__* %176, %struct.TYPE_11__** %2, align 8
  br label %195

177:                                              ; preds = %125, %108, %33
  br label %178

178:                                              ; preds = %182, %177
  %179 = load i32, i32* %11, align 4
  %180 = add nsw i32 %179, -1
  store i32 %180, i32* %11, align 4
  %181 = icmp ne i32 %179, 0
  br i1 %181, label %182, label %190

182:                                              ; preds = %178
  %183 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %184 = load i32, i32* %11, align 4
  %185 = sext i32 %184 to i64
  %186 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %183, i64 %185
  %187 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %186, i32 0, i32 1
  %188 = load %struct.TYPE_11__*, %struct.TYPE_11__** %187, align 8
  %189 = call i32 @xfree(%struct.TYPE_11__* %188)
  br label %178

190:                                              ; preds = %178
  %191 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %192 = call i32 @xfree(%struct.TYPE_11__* %191)
  %193 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %194 = call i32 @xfree(%struct.TYPE_11__* %193)
  store %struct.TYPE_11__* null, %struct.TYPE_11__** %2, align 8
  br label %195

195:                                              ; preds = %190, %175, %26, %19
  %196 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  ret %struct.TYPE_11__* %196
}

declare dso_local i64 @efi_getenv(i32*, i8*, %struct.TYPE_11__*, i64*) #1

declare dso_local i8* @malloc(i64) #1

declare dso_local i64 @memcmp(i32*, i32*, i32) #1

declare dso_local %struct.TYPE_11__* @realloc(%struct.TYPE_11__*, i32) #1

declare dso_local i32 @memcpy(%struct.TYPE_11__*, i32, i64) #1

declare dso_local i32 @xfree(%struct.TYPE_11__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
