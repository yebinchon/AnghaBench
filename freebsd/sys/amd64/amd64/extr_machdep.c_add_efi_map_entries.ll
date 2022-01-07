; ModuleID = '/home/carl/AnghaBench/freebsd/sys/amd64/amd64/extr_machdep.c_add_efi_map_entries.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/amd64/amd64/extr_machdep.c_add_efi_map_entries.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.efi_map_header = type { i32, i32 }
%struct.efi_md = type { i64, i32, i32, i32, i32 }

@add_efi_map_entries.types = internal global [15 x i8*] [i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.7, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.8, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.9, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.10, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.11, i32 0, i32 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.12, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.13, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.14, i32 0, i32 0)], align 16
@.str = private unnamed_addr constant [9 x i8] c"Reserved\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"LoaderCode\00", align 1
@.str.2 = private unnamed_addr constant [11 x i8] c"LoaderData\00", align 1
@.str.3 = private unnamed_addr constant [17 x i8] c"BootServicesCode\00", align 1
@.str.4 = private unnamed_addr constant [17 x i8] c"BootServicesData\00", align 1
@.str.5 = private unnamed_addr constant [20 x i8] c"RuntimeServicesCode\00", align 1
@.str.6 = private unnamed_addr constant [20 x i8] c"RuntimeServicesData\00", align 1
@.str.7 = private unnamed_addr constant [19 x i8] c"ConventionalMemory\00", align 1
@.str.8 = private unnamed_addr constant [15 x i8] c"UnusableMemory\00", align 1
@.str.9 = private unnamed_addr constant [18 x i8] c"ACPIReclaimMemory\00", align 1
@.str.10 = private unnamed_addr constant [14 x i8] c"ACPIMemoryNVS\00", align 1
@.str.11 = private unnamed_addr constant [15 x i8] c"MemoryMappedIO\00", align 1
@.str.12 = private unnamed_addr constant [24 x i8] c"MemoryMappedIOPortSpace\00", align 1
@.str.13 = private unnamed_addr constant [8 x i8] c"PalCode\00", align 1
@.str.14 = private unnamed_addr constant [17 x i8] c"PersistentMemory\00", align 1
@boothowto = common dso_local global i32 0, align 4
@RB_VERBOSE = common dso_local global i32 0, align 4
@.str.15 = private unnamed_addr constant [24 x i8] c"%23s %12s %12s %8s %4s\0A\00", align 1
@.str.16 = private unnamed_addr constant [5 x i8] c"Type\00", align 1
@.str.17 = private unnamed_addr constant [9 x i8] c"Physical\00", align 1
@.str.18 = private unnamed_addr constant [8 x i8] c"Virtual\00", align 1
@.str.19 = private unnamed_addr constant [7 x i8] c"#Pages\00", align 1
@.str.20 = private unnamed_addr constant [5 x i8] c"Attr\00", align 1
@.str.21 = private unnamed_addr constant [10 x i8] c"<INVALID>\00", align 1
@.str.22 = private unnamed_addr constant [24 x i8] c"%23s %012lx %12p %08lx \00", align 1
@EFI_MD_ATTR_UC = common dso_local global i32 0, align 4
@.str.23 = private unnamed_addr constant [4 x i8] c"UC \00", align 1
@EFI_MD_ATTR_WC = common dso_local global i32 0, align 4
@.str.24 = private unnamed_addr constant [4 x i8] c"WC \00", align 1
@EFI_MD_ATTR_WT = common dso_local global i32 0, align 4
@.str.25 = private unnamed_addr constant [4 x i8] c"WT \00", align 1
@EFI_MD_ATTR_WB = common dso_local global i32 0, align 4
@.str.26 = private unnamed_addr constant [4 x i8] c"WB \00", align 1
@EFI_MD_ATTR_UCE = common dso_local global i32 0, align 4
@.str.27 = private unnamed_addr constant [5 x i8] c"UCE \00", align 1
@EFI_MD_ATTR_WP = common dso_local global i32 0, align 4
@.str.28 = private unnamed_addr constant [4 x i8] c"WP \00", align 1
@EFI_MD_ATTR_RP = common dso_local global i32 0, align 4
@.str.29 = private unnamed_addr constant [4 x i8] c"RP \00", align 1
@EFI_MD_ATTR_XP = common dso_local global i32 0, align 4
@.str.30 = private unnamed_addr constant [4 x i8] c"XP \00", align 1
@EFI_MD_ATTR_NV = common dso_local global i32 0, align 4
@.str.31 = private unnamed_addr constant [4 x i8] c"NV \00", align 1
@EFI_MD_ATTR_MORE_RELIABLE = common dso_local global i32 0, align 4
@.str.32 = private unnamed_addr constant [15 x i8] c"MORE_RELIABLE \00", align 1
@EFI_MD_ATTR_RO = common dso_local global i32 0, align 4
@.str.33 = private unnamed_addr constant [4 x i8] c"RO \00", align 1
@EFI_MD_ATTR_RT = common dso_local global i32 0, align 4
@.str.34 = private unnamed_addr constant [8 x i8] c"RUNTIME\00", align 1
@.str.35 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@PAGE_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.efi_map_header*, i32*, i32*)* @add_efi_map_entries to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @add_efi_map_entries(%struct.efi_map_header* %0, i32* %1, i32* %2) #0 {
  %4 = alloca %struct.efi_map_header*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.efi_md*, align 8
  %8 = alloca %struct.efi_md*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.efi_map_header* %0, %struct.efi_map_header** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32* %2, i32** %6, align 8
  store i64 16, i64* %10, align 8
  %13 = load %struct.efi_map_header*, %struct.efi_map_header** %4, align 8
  %14 = bitcast %struct.efi_map_header* %13 to i32*
  %15 = load i64, i64* %10, align 8
  %16 = getelementptr inbounds i32, i32* %14, i64 %15
  %17 = bitcast i32* %16 to %struct.efi_md*
  store %struct.efi_md* %17, %struct.efi_md** %7, align 8
  %18 = load %struct.efi_map_header*, %struct.efi_map_header** %4, align 8
  %19 = getelementptr inbounds %struct.efi_map_header, %struct.efi_map_header* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %3
  br label %211

23:                                               ; preds = %3
  %24 = load %struct.efi_map_header*, %struct.efi_map_header** %4, align 8
  %25 = getelementptr inbounds %struct.efi_map_header, %struct.efi_map_header* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.efi_map_header*, %struct.efi_map_header** %4, align 8
  %28 = getelementptr inbounds %struct.efi_map_header, %struct.efi_map_header* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = sdiv i32 %26, %29
  store i32 %30, i32* %11, align 4
  %31 = load i32, i32* @boothowto, align 4
  %32 = load i32, i32* @RB_VERBOSE, align 4
  %33 = and i32 %31, %32
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %37

35:                                               ; preds = %23
  %36 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.15, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.16, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.17, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.18, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.19, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.20, i64 0, i64 0))
  br label %37

37:                                               ; preds = %35, %23
  store i32 0, i32* %12, align 4
  %38 = load %struct.efi_md*, %struct.efi_md** %7, align 8
  store %struct.efi_md* %38, %struct.efi_md** %8, align 8
  br label %39

39:                                               ; preds = %203, %37
  %40 = load i32, i32* %12, align 4
  %41 = load i32, i32* %11, align 4
  %42 = icmp slt i32 %40, %41
  br i1 %42, label %43, label %211

43:                                               ; preds = %39
  %44 = load i32, i32* @boothowto, align 4
  %45 = load i32, i32* @RB_VERBOSE, align 4
  %46 = and i32 %44, %45
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %182

48:                                               ; preds = %43
  %49 = load %struct.efi_md*, %struct.efi_md** %8, align 8
  %50 = getelementptr inbounds %struct.efi_md, %struct.efi_md* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = call i64 @nitems(i8** getelementptr inbounds ([15 x i8*], [15 x i8*]* @add_efi_map_entries.types, i64 0, i64 0))
  %53 = icmp ult i64 %51, %52
  br i1 %53, label %54, label %60

54:                                               ; preds = %48
  %55 = load %struct.efi_md*, %struct.efi_md** %8, align 8
  %56 = getelementptr inbounds %struct.efi_md, %struct.efi_md* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = getelementptr inbounds [15 x i8*], [15 x i8*]* @add_efi_map_entries.types, i64 0, i64 %57
  %59 = load i8*, i8** %58, align 8
  store i8* %59, i8** %9, align 8
  br label %61

60:                                               ; preds = %48
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.21, i64 0, i64 0), i8** %9, align 8
  br label %61

61:                                               ; preds = %60, %54
  %62 = load i8*, i8** %9, align 8
  %63 = load %struct.efi_md*, %struct.efi_md** %8, align 8
  %64 = getelementptr inbounds %struct.efi_md, %struct.efi_md* %63, i32 0, i32 3
  %65 = load i32, i32* %64, align 8
  %66 = load %struct.efi_md*, %struct.efi_md** %8, align 8
  %67 = getelementptr inbounds %struct.efi_md, %struct.efi_md* %66, i32 0, i32 4
  %68 = load i32, i32* %67, align 4
  %69 = load %struct.efi_md*, %struct.efi_md** %8, align 8
  %70 = getelementptr inbounds %struct.efi_md, %struct.efi_md* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 8
  %72 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.22, i64 0, i64 0), i8* %62, i32 %65, i32 %68, i32 %71)
  %73 = load %struct.efi_md*, %struct.efi_md** %8, align 8
  %74 = getelementptr inbounds %struct.efi_md, %struct.efi_md* %73, i32 0, i32 2
  %75 = load i32, i32* %74, align 4
  %76 = load i32, i32* @EFI_MD_ATTR_UC, align 4
  %77 = and i32 %75, %76
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %81

79:                                               ; preds = %61
  %80 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.23, i64 0, i64 0))
  br label %81

81:                                               ; preds = %79, %61
  %82 = load %struct.efi_md*, %struct.efi_md** %8, align 8
  %83 = getelementptr inbounds %struct.efi_md, %struct.efi_md* %82, i32 0, i32 2
  %84 = load i32, i32* %83, align 4
  %85 = load i32, i32* @EFI_MD_ATTR_WC, align 4
  %86 = and i32 %84, %85
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %90

88:                                               ; preds = %81
  %89 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.24, i64 0, i64 0))
  br label %90

90:                                               ; preds = %88, %81
  %91 = load %struct.efi_md*, %struct.efi_md** %8, align 8
  %92 = getelementptr inbounds %struct.efi_md, %struct.efi_md* %91, i32 0, i32 2
  %93 = load i32, i32* %92, align 4
  %94 = load i32, i32* @EFI_MD_ATTR_WT, align 4
  %95 = and i32 %93, %94
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %99

97:                                               ; preds = %90
  %98 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.25, i64 0, i64 0))
  br label %99

99:                                               ; preds = %97, %90
  %100 = load %struct.efi_md*, %struct.efi_md** %8, align 8
  %101 = getelementptr inbounds %struct.efi_md, %struct.efi_md* %100, i32 0, i32 2
  %102 = load i32, i32* %101, align 4
  %103 = load i32, i32* @EFI_MD_ATTR_WB, align 4
  %104 = and i32 %102, %103
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %106, label %108

106:                                              ; preds = %99
  %107 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.26, i64 0, i64 0))
  br label %108

108:                                              ; preds = %106, %99
  %109 = load %struct.efi_md*, %struct.efi_md** %8, align 8
  %110 = getelementptr inbounds %struct.efi_md, %struct.efi_md* %109, i32 0, i32 2
  %111 = load i32, i32* %110, align 4
  %112 = load i32, i32* @EFI_MD_ATTR_UCE, align 4
  %113 = and i32 %111, %112
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %115, label %117

115:                                              ; preds = %108
  %116 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.27, i64 0, i64 0))
  br label %117

117:                                              ; preds = %115, %108
  %118 = load %struct.efi_md*, %struct.efi_md** %8, align 8
  %119 = getelementptr inbounds %struct.efi_md, %struct.efi_md* %118, i32 0, i32 2
  %120 = load i32, i32* %119, align 4
  %121 = load i32, i32* @EFI_MD_ATTR_WP, align 4
  %122 = and i32 %120, %121
  %123 = icmp ne i32 %122, 0
  br i1 %123, label %124, label %126

124:                                              ; preds = %117
  %125 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.28, i64 0, i64 0))
  br label %126

126:                                              ; preds = %124, %117
  %127 = load %struct.efi_md*, %struct.efi_md** %8, align 8
  %128 = getelementptr inbounds %struct.efi_md, %struct.efi_md* %127, i32 0, i32 2
  %129 = load i32, i32* %128, align 4
  %130 = load i32, i32* @EFI_MD_ATTR_RP, align 4
  %131 = and i32 %129, %130
  %132 = icmp ne i32 %131, 0
  br i1 %132, label %133, label %135

133:                                              ; preds = %126
  %134 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.29, i64 0, i64 0))
  br label %135

135:                                              ; preds = %133, %126
  %136 = load %struct.efi_md*, %struct.efi_md** %8, align 8
  %137 = getelementptr inbounds %struct.efi_md, %struct.efi_md* %136, i32 0, i32 2
  %138 = load i32, i32* %137, align 4
  %139 = load i32, i32* @EFI_MD_ATTR_XP, align 4
  %140 = and i32 %138, %139
  %141 = icmp ne i32 %140, 0
  br i1 %141, label %142, label %144

142:                                              ; preds = %135
  %143 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.30, i64 0, i64 0))
  br label %144

144:                                              ; preds = %142, %135
  %145 = load %struct.efi_md*, %struct.efi_md** %8, align 8
  %146 = getelementptr inbounds %struct.efi_md, %struct.efi_md* %145, i32 0, i32 2
  %147 = load i32, i32* %146, align 4
  %148 = load i32, i32* @EFI_MD_ATTR_NV, align 4
  %149 = and i32 %147, %148
  %150 = icmp ne i32 %149, 0
  br i1 %150, label %151, label %153

151:                                              ; preds = %144
  %152 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.31, i64 0, i64 0))
  br label %153

153:                                              ; preds = %151, %144
  %154 = load %struct.efi_md*, %struct.efi_md** %8, align 8
  %155 = getelementptr inbounds %struct.efi_md, %struct.efi_md* %154, i32 0, i32 2
  %156 = load i32, i32* %155, align 4
  %157 = load i32, i32* @EFI_MD_ATTR_MORE_RELIABLE, align 4
  %158 = and i32 %156, %157
  %159 = icmp ne i32 %158, 0
  br i1 %159, label %160, label %162

160:                                              ; preds = %153
  %161 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.32, i64 0, i64 0))
  br label %162

162:                                              ; preds = %160, %153
  %163 = load %struct.efi_md*, %struct.efi_md** %8, align 8
  %164 = getelementptr inbounds %struct.efi_md, %struct.efi_md* %163, i32 0, i32 2
  %165 = load i32, i32* %164, align 4
  %166 = load i32, i32* @EFI_MD_ATTR_RO, align 4
  %167 = and i32 %165, %166
  %168 = icmp ne i32 %167, 0
  br i1 %168, label %169, label %171

169:                                              ; preds = %162
  %170 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.33, i64 0, i64 0))
  br label %171

171:                                              ; preds = %169, %162
  %172 = load %struct.efi_md*, %struct.efi_md** %8, align 8
  %173 = getelementptr inbounds %struct.efi_md, %struct.efi_md* %172, i32 0, i32 2
  %174 = load i32, i32* %173, align 4
  %175 = load i32, i32* @EFI_MD_ATTR_RT, align 4
  %176 = and i32 %174, %175
  %177 = icmp ne i32 %176, 0
  br i1 %177, label %178, label %180

178:                                              ; preds = %171
  %179 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.34, i64 0, i64 0))
  br label %180

180:                                              ; preds = %178, %171
  %181 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.35, i64 0, i64 0))
  br label %182

182:                                              ; preds = %180, %43
  %183 = load %struct.efi_md*, %struct.efi_md** %8, align 8
  %184 = getelementptr inbounds %struct.efi_md, %struct.efi_md* %183, i32 0, i32 0
  %185 = load i64, i64* %184, align 8
  switch i64 %185, label %187 [
    i64 130, label %186
    i64 129, label %186
    i64 132, label %186
    i64 131, label %186
    i64 128, label %186
  ]

186:                                              ; preds = %182, %182, %182, %182, %182
  br label %188

187:                                              ; preds = %182
  br label %203

188:                                              ; preds = %186
  %189 = load %struct.efi_md*, %struct.efi_md** %8, align 8
  %190 = getelementptr inbounds %struct.efi_md, %struct.efi_md* %189, i32 0, i32 3
  %191 = load i32, i32* %190, align 8
  %192 = load %struct.efi_md*, %struct.efi_md** %8, align 8
  %193 = getelementptr inbounds %struct.efi_md, %struct.efi_md* %192, i32 0, i32 1
  %194 = load i32, i32* %193, align 8
  %195 = load i32, i32* @PAGE_SIZE, align 4
  %196 = mul nsw i32 %194, %195
  %197 = load i32*, i32** %5, align 8
  %198 = load i32*, i32** %6, align 8
  %199 = call i32 @add_physmap_entry(i32 %191, i32 %196, i32* %197, i32* %198)
  %200 = icmp ne i32 %199, 0
  br i1 %200, label %202, label %201

201:                                              ; preds = %188
  br label %211

202:                                              ; preds = %188
  br label %203

203:                                              ; preds = %202, %187
  %204 = load i32, i32* %12, align 4
  %205 = add nsw i32 %204, 1
  store i32 %205, i32* %12, align 4
  %206 = load %struct.efi_md*, %struct.efi_md** %8, align 8
  %207 = load %struct.efi_map_header*, %struct.efi_map_header** %4, align 8
  %208 = getelementptr inbounds %struct.efi_map_header, %struct.efi_map_header* %207, i32 0, i32 0
  %209 = load i32, i32* %208, align 4
  %210 = call %struct.efi_md* @efi_next_descriptor(%struct.efi_md* %206, i32 %209)
  store %struct.efi_md* %210, %struct.efi_md** %8, align 8
  br label %39

211:                                              ; preds = %22, %201, %39
  ret void
}

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i64 @nitems(i8**) #1

declare dso_local i32 @add_physmap_entry(i32, i32, i32*, i32*) #1

declare dso_local %struct.efi_md* @efi_next_descriptor(%struct.efi_md*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
