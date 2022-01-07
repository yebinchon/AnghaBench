; ModuleID = '/home/carl/AnghaBench/freebsd/sbin/sysctl/extr_sysctl.c_S_efi_map.c'
source_filename = "/home/carl/AnghaBench/freebsd/sbin/sysctl/extr_sysctl.c_S_efi_map.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.efi_map_header = type { i32, i64 }
%struct.efi_md = type { i64, i32, i64, i32, i64 }

@S_efi_map.types = internal constant [143 x i8*] [i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.7, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.8, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.9, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.10, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.11, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.12, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.13, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.14, i32 0, i32 0)], align 16
@.str = private unnamed_addr constant [20 x i8] c"RuntimeServicesData\00", align 1
@.str.1 = private unnamed_addr constant [20 x i8] c"RuntimeServicesCode\00", align 1
@.str.2 = private unnamed_addr constant [18 x i8] c"ACPIReclaimMemory\00", align 1
@.str.3 = private unnamed_addr constant [17 x i8] c"PersistentMemory\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"PalCode\00", align 1
@.str.5 = private unnamed_addr constant [9 x i8] c"Reserved\00", align 1
@.str.6 = private unnamed_addr constant [24 x i8] c"MemoryMappedIOPortSpace\00", align 1
@.str.7 = private unnamed_addr constant [15 x i8] c"MemoryMappedIO\00", align 1
@.str.8 = private unnamed_addr constant [19 x i8] c"ConventionalMemory\00", align 1
@.str.9 = private unnamed_addr constant [14 x i8] c"ACPIMemoryNVS\00", align 1
@.str.10 = private unnamed_addr constant [11 x i8] c"LoaderData\00", align 1
@.str.11 = private unnamed_addr constant [11 x i8] c"LoaderCode\00", align 1
@.str.12 = private unnamed_addr constant [17 x i8] c"BootServicesData\00", align 1
@.str.13 = private unnamed_addr constant [17 x i8] c"BootServicesCode\00", align 1
@.str.14 = private unnamed_addr constant [15 x i8] c"UnusableMemory\00", align 1
@.str.15 = private unnamed_addr constant [34 x i8] c"S_efi_map length less than header\00", align 1
@.str.16 = private unnamed_addr constant [37 x i8] c"S_efi_map length mismatch %zu vs %zu\00", align 1
@.str.17 = private unnamed_addr constant [24 x i8] c"\0A%23s %12s %12s %8s %4s\00", align 1
@.str.18 = private unnamed_addr constant [5 x i8] c"Type\00", align 1
@.str.19 = private unnamed_addr constant [9 x i8] c"Physical\00", align 1
@.str.20 = private unnamed_addr constant [8 x i8] c"Virtual\00", align 1
@.str.21 = private unnamed_addr constant [7 x i8] c"#Pages\00", align 1
@.str.22 = private unnamed_addr constant [5 x i8] c"Attr\00", align 1
@.str.23 = private unnamed_addr constant [10 x i8] c"<INVALID>\00", align 1
@.str.24 = private unnamed_addr constant [25 x i8] c"\0A%23s %012jx %12p %08jx \00", align 1
@EFI_MD_ATTR_UC = common dso_local global i32 0, align 4
@.str.25 = private unnamed_addr constant [4 x i8] c"UC \00", align 1
@EFI_MD_ATTR_WC = common dso_local global i32 0, align 4
@.str.26 = private unnamed_addr constant [4 x i8] c"WC \00", align 1
@EFI_MD_ATTR_WT = common dso_local global i32 0, align 4
@.str.27 = private unnamed_addr constant [4 x i8] c"WT \00", align 1
@EFI_MD_ATTR_WB = common dso_local global i32 0, align 4
@.str.28 = private unnamed_addr constant [4 x i8] c"WB \00", align 1
@EFI_MD_ATTR_UCE = common dso_local global i32 0, align 4
@.str.29 = private unnamed_addr constant [5 x i8] c"UCE \00", align 1
@EFI_MD_ATTR_WP = common dso_local global i32 0, align 4
@.str.30 = private unnamed_addr constant [4 x i8] c"WP \00", align 1
@EFI_MD_ATTR_RP = common dso_local global i32 0, align 4
@.str.31 = private unnamed_addr constant [4 x i8] c"RP \00", align 1
@EFI_MD_ATTR_XP = common dso_local global i32 0, align 4
@.str.32 = private unnamed_addr constant [4 x i8] c"XP \00", align 1
@EFI_MD_ATTR_RT = common dso_local global i32 0, align 4
@.str.33 = private unnamed_addr constant [8 x i8] c"RUNTIME\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64, i8*)* @S_efi_map to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @S_efi_map(i64 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.efi_map_header*, align 8
  %7 = alloca %struct.efi_md*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i64 %0, i64* %4, align 8
  store i8* %1, i8** %5, align 8
  %12 = load i64, i64* %4, align 8
  %13 = icmp ult i64 %12, 16
  br i1 %13, label %14, label %16

14:                                               ; preds = %2
  %15 = call i32 (i8*, ...) @warnx(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.15, i64 0, i64 0))
  store i32 1, i32* %3, align 4
  br label %180

16:                                               ; preds = %2
  %17 = load i8*, i8** %5, align 8
  %18 = bitcast i8* %17 to %struct.efi_map_header*
  store %struct.efi_map_header* %18, %struct.efi_map_header** %6, align 8
  store i64 16, i64* %9, align 8
  %19 = load %struct.efi_map_header*, %struct.efi_map_header** %6, align 8
  %20 = bitcast %struct.efi_map_header* %19 to i32*
  %21 = load i64, i64* %9, align 8
  %22 = getelementptr inbounds i32, i32* %20, i64 %21
  %23 = bitcast i32* %22 to %struct.efi_md*
  store %struct.efi_md* %23, %struct.efi_md** %7, align 8
  %24 = load %struct.efi_map_header*, %struct.efi_map_header** %6, align 8
  %25 = getelementptr inbounds %struct.efi_map_header, %struct.efi_map_header* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %16
  store i32 0, i32* %3, align 4
  br label %180

29:                                               ; preds = %16
  %30 = load i64, i64* %4, align 8
  %31 = load i64, i64* %9, align 8
  %32 = load %struct.efi_map_header*, %struct.efi_map_header** %6, align 8
  %33 = getelementptr inbounds %struct.efi_map_header, %struct.efi_map_header* %32, i32 0, i32 1
  %34 = load i64, i64* %33, align 8
  %35 = add i64 %31, %34
  %36 = icmp ne i64 %30, %35
  br i1 %36, label %37, label %45

37:                                               ; preds = %29
  %38 = load i64, i64* %4, align 8
  %39 = load i64, i64* %9, align 8
  %40 = load %struct.efi_map_header*, %struct.efi_map_header** %6, align 8
  %41 = getelementptr inbounds %struct.efi_map_header, %struct.efi_map_header* %40, i32 0, i32 1
  %42 = load i64, i64* %41, align 8
  %43 = add i64 %39, %42
  %44 = call i32 (i8*, ...) @warnx(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.16, i64 0, i64 0), i64 %38, i64 %43)
  store i32 1, i32* %3, align 4
  br label %180

45:                                               ; preds = %29
  %46 = load %struct.efi_map_header*, %struct.efi_map_header** %6, align 8
  %47 = getelementptr inbounds %struct.efi_map_header, %struct.efi_map_header* %46, i32 0, i32 1
  %48 = load i64, i64* %47, align 8
  %49 = load %struct.efi_map_header*, %struct.efi_map_header** %6, align 8
  %50 = getelementptr inbounds %struct.efi_map_header, %struct.efi_map_header* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = sext i32 %51 to i64
  %53 = udiv i64 %48, %52
  %54 = trunc i64 %53 to i32
  store i32 %54, i32* %10, align 4
  %55 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.17, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.18, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.19, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.20, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.21, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.22, i64 0, i64 0))
  store i32 0, i32* %11, align 4
  br label %56

56:                                               ; preds = %171, %45
  %57 = load i32, i32* %11, align 4
  %58 = load i32, i32* %10, align 4
  %59 = icmp slt i32 %57, %58
  br i1 %59, label %60, label %179

60:                                               ; preds = %56
  store i8* null, i8** %8, align 8
  %61 = load %struct.efi_md*, %struct.efi_md** %7, align 8
  %62 = getelementptr inbounds %struct.efi_md, %struct.efi_md* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = call i64 @nitems(i8** getelementptr inbounds ([143 x i8*], [143 x i8*]* @S_efi_map.types, i64 0, i64 0))
  %65 = icmp ult i64 %63, %64
  br i1 %65, label %66, label %72

66:                                               ; preds = %60
  %67 = load %struct.efi_md*, %struct.efi_md** %7, align 8
  %68 = getelementptr inbounds %struct.efi_md, %struct.efi_md* %67, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = getelementptr inbounds [143 x i8*], [143 x i8*]* @S_efi_map.types, i64 0, i64 %69
  %71 = load i8*, i8** %70, align 8
  store i8* %71, i8** %8, align 8
  br label %72

72:                                               ; preds = %66, %60
  %73 = load i8*, i8** %8, align 8
  %74 = icmp eq i8* %73, null
  br i1 %74, label %75, label %76

75:                                               ; preds = %72
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.23, i64 0, i64 0), i8** %8, align 8
  br label %76

76:                                               ; preds = %75, %72
  %77 = load i8*, i8** %8, align 8
  %78 = load %struct.efi_md*, %struct.efi_md** %7, align 8
  %79 = getelementptr inbounds %struct.efi_md, %struct.efi_md* %78, i32 0, i32 4
  %80 = load i64, i64* %79, align 8
  %81 = trunc i64 %80 to i32
  %82 = load %struct.efi_md*, %struct.efi_md** %7, align 8
  %83 = getelementptr inbounds %struct.efi_md, %struct.efi_md* %82, i32 0, i32 3
  %84 = load i32, i32* %83, align 8
  %85 = load %struct.efi_md*, %struct.efi_md** %7, align 8
  %86 = getelementptr inbounds %struct.efi_md, %struct.efi_md* %85, i32 0, i32 2
  %87 = load i64, i64* %86, align 8
  %88 = trunc i64 %87 to i32
  %89 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.24, i64 0, i64 0), i8* %77, i32 %81, i32 %84, i32 %88)
  %90 = load %struct.efi_md*, %struct.efi_md** %7, align 8
  %91 = getelementptr inbounds %struct.efi_md, %struct.efi_md* %90, i32 0, i32 1
  %92 = load i32, i32* %91, align 8
  %93 = load i32, i32* @EFI_MD_ATTR_UC, align 4
  %94 = and i32 %92, %93
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %98

96:                                               ; preds = %76
  %97 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.25, i64 0, i64 0))
  br label %98

98:                                               ; preds = %96, %76
  %99 = load %struct.efi_md*, %struct.efi_md** %7, align 8
  %100 = getelementptr inbounds %struct.efi_md, %struct.efi_md* %99, i32 0, i32 1
  %101 = load i32, i32* %100, align 8
  %102 = load i32, i32* @EFI_MD_ATTR_WC, align 4
  %103 = and i32 %101, %102
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %105, label %107

105:                                              ; preds = %98
  %106 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.26, i64 0, i64 0))
  br label %107

107:                                              ; preds = %105, %98
  %108 = load %struct.efi_md*, %struct.efi_md** %7, align 8
  %109 = getelementptr inbounds %struct.efi_md, %struct.efi_md* %108, i32 0, i32 1
  %110 = load i32, i32* %109, align 8
  %111 = load i32, i32* @EFI_MD_ATTR_WT, align 4
  %112 = and i32 %110, %111
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %114, label %116

114:                                              ; preds = %107
  %115 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.27, i64 0, i64 0))
  br label %116

116:                                              ; preds = %114, %107
  %117 = load %struct.efi_md*, %struct.efi_md** %7, align 8
  %118 = getelementptr inbounds %struct.efi_md, %struct.efi_md* %117, i32 0, i32 1
  %119 = load i32, i32* %118, align 8
  %120 = load i32, i32* @EFI_MD_ATTR_WB, align 4
  %121 = and i32 %119, %120
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %123, label %125

123:                                              ; preds = %116
  %124 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.28, i64 0, i64 0))
  br label %125

125:                                              ; preds = %123, %116
  %126 = load %struct.efi_md*, %struct.efi_md** %7, align 8
  %127 = getelementptr inbounds %struct.efi_md, %struct.efi_md* %126, i32 0, i32 1
  %128 = load i32, i32* %127, align 8
  %129 = load i32, i32* @EFI_MD_ATTR_UCE, align 4
  %130 = and i32 %128, %129
  %131 = icmp ne i32 %130, 0
  br i1 %131, label %132, label %134

132:                                              ; preds = %125
  %133 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.29, i64 0, i64 0))
  br label %134

134:                                              ; preds = %132, %125
  %135 = load %struct.efi_md*, %struct.efi_md** %7, align 8
  %136 = getelementptr inbounds %struct.efi_md, %struct.efi_md* %135, i32 0, i32 1
  %137 = load i32, i32* %136, align 8
  %138 = load i32, i32* @EFI_MD_ATTR_WP, align 4
  %139 = and i32 %137, %138
  %140 = icmp ne i32 %139, 0
  br i1 %140, label %141, label %143

141:                                              ; preds = %134
  %142 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.30, i64 0, i64 0))
  br label %143

143:                                              ; preds = %141, %134
  %144 = load %struct.efi_md*, %struct.efi_md** %7, align 8
  %145 = getelementptr inbounds %struct.efi_md, %struct.efi_md* %144, i32 0, i32 1
  %146 = load i32, i32* %145, align 8
  %147 = load i32, i32* @EFI_MD_ATTR_RP, align 4
  %148 = and i32 %146, %147
  %149 = icmp ne i32 %148, 0
  br i1 %149, label %150, label %152

150:                                              ; preds = %143
  %151 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.31, i64 0, i64 0))
  br label %152

152:                                              ; preds = %150, %143
  %153 = load %struct.efi_md*, %struct.efi_md** %7, align 8
  %154 = getelementptr inbounds %struct.efi_md, %struct.efi_md* %153, i32 0, i32 1
  %155 = load i32, i32* %154, align 8
  %156 = load i32, i32* @EFI_MD_ATTR_XP, align 4
  %157 = and i32 %155, %156
  %158 = icmp ne i32 %157, 0
  br i1 %158, label %159, label %161

159:                                              ; preds = %152
  %160 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.32, i64 0, i64 0))
  br label %161

161:                                              ; preds = %159, %152
  %162 = load %struct.efi_md*, %struct.efi_md** %7, align 8
  %163 = getelementptr inbounds %struct.efi_md, %struct.efi_md* %162, i32 0, i32 1
  %164 = load i32, i32* %163, align 8
  %165 = load i32, i32* @EFI_MD_ATTR_RT, align 4
  %166 = and i32 %164, %165
  %167 = icmp ne i32 %166, 0
  br i1 %167, label %168, label %170

168:                                              ; preds = %161
  %169 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.33, i64 0, i64 0))
  br label %170

170:                                              ; preds = %168, %161
  br label %171

171:                                              ; preds = %170
  %172 = load i32, i32* %11, align 4
  %173 = add nsw i32 %172, 1
  store i32 %173, i32* %11, align 4
  %174 = load %struct.efi_md*, %struct.efi_md** %7, align 8
  %175 = load %struct.efi_map_header*, %struct.efi_map_header** %6, align 8
  %176 = getelementptr inbounds %struct.efi_map_header, %struct.efi_map_header* %175, i32 0, i32 0
  %177 = load i32, i32* %176, align 8
  %178 = call %struct.efi_md* @efi_next_descriptor(%struct.efi_md* %174, i32 %177)
  store %struct.efi_md* %178, %struct.efi_md** %7, align 8
  br label %56

179:                                              ; preds = %56
  store i32 0, i32* %3, align 4
  br label %180

180:                                              ; preds = %179, %37, %28, %14
  %181 = load i32, i32* %3, align 4
  ret i32 %181
}

declare dso_local i32 @warnx(i8*, ...) #1

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i64 @nitems(i8**) #1

declare dso_local %struct.efi_md* @efi_next_descriptor(%struct.efi_md*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
