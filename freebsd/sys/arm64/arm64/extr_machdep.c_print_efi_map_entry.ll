; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm64/arm64/extr_machdep.c_print_efi_map_entry.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm64/arm64/extr_machdep.c_print_efi_map_entry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.efi_md = type { i64, i32, i32, i32, i32 }

@print_efi_map_entry.types = internal global [15 x i8*] [i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.7, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.8, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.9, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.10, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.11, i32 0, i32 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.12, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.13, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.14, i32 0, i32 0)], align 16
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
@.str.15 = private unnamed_addr constant [10 x i8] c"<INVALID>\00", align 1
@.str.16 = private unnamed_addr constant [24 x i8] c"%23s %012lx %12p %08lx \00", align 1
@EFI_MD_ATTR_UC = common dso_local global i32 0, align 4
@.str.17 = private unnamed_addr constant [4 x i8] c"UC \00", align 1
@EFI_MD_ATTR_WC = common dso_local global i32 0, align 4
@.str.18 = private unnamed_addr constant [4 x i8] c"WC \00", align 1
@EFI_MD_ATTR_WT = common dso_local global i32 0, align 4
@.str.19 = private unnamed_addr constant [4 x i8] c"WT \00", align 1
@EFI_MD_ATTR_WB = common dso_local global i32 0, align 4
@.str.20 = private unnamed_addr constant [4 x i8] c"WB \00", align 1
@EFI_MD_ATTR_UCE = common dso_local global i32 0, align 4
@.str.21 = private unnamed_addr constant [5 x i8] c"UCE \00", align 1
@EFI_MD_ATTR_WP = common dso_local global i32 0, align 4
@.str.22 = private unnamed_addr constant [4 x i8] c"WP \00", align 1
@EFI_MD_ATTR_RP = common dso_local global i32 0, align 4
@.str.23 = private unnamed_addr constant [4 x i8] c"RP \00", align 1
@EFI_MD_ATTR_XP = common dso_local global i32 0, align 4
@.str.24 = private unnamed_addr constant [4 x i8] c"XP \00", align 1
@EFI_MD_ATTR_NV = common dso_local global i32 0, align 4
@.str.25 = private unnamed_addr constant [4 x i8] c"NV \00", align 1
@EFI_MD_ATTR_MORE_RELIABLE = common dso_local global i32 0, align 4
@.str.26 = private unnamed_addr constant [15 x i8] c"MORE_RELIABLE \00", align 1
@EFI_MD_ATTR_RO = common dso_local global i32 0, align 4
@.str.27 = private unnamed_addr constant [4 x i8] c"RO \00", align 1
@EFI_MD_ATTR_RT = common dso_local global i32 0, align 4
@.str.28 = private unnamed_addr constant [8 x i8] c"RUNTIME\00", align 1
@.str.29 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.efi_md*)* @print_efi_map_entry to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @print_efi_map_entry(%struct.efi_md* %0) #0 {
  %2 = alloca %struct.efi_md*, align 8
  %3 = alloca i8*, align 8
  store %struct.efi_md* %0, %struct.efi_md** %2, align 8
  %4 = load %struct.efi_md*, %struct.efi_md** %2, align 8
  %5 = getelementptr inbounds %struct.efi_md, %struct.efi_md* %4, i32 0, i32 0
  %6 = load i64, i64* %5, align 8
  %7 = call i64 @nitems(i8** getelementptr inbounds ([15 x i8*], [15 x i8*]* @print_efi_map_entry.types, i64 0, i64 0))
  %8 = icmp ult i64 %6, %7
  br i1 %8, label %9, label %15

9:                                                ; preds = %1
  %10 = load %struct.efi_md*, %struct.efi_md** %2, align 8
  %11 = getelementptr inbounds %struct.efi_md, %struct.efi_md* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = getelementptr inbounds [15 x i8*], [15 x i8*]* @print_efi_map_entry.types, i64 0, i64 %12
  %14 = load i8*, i8** %13, align 8
  store i8* %14, i8** %3, align 8
  br label %16

15:                                               ; preds = %1
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.15, i64 0, i64 0), i8** %3, align 8
  br label %16

16:                                               ; preds = %15, %9
  %17 = load i8*, i8** %3, align 8
  %18 = load %struct.efi_md*, %struct.efi_md** %2, align 8
  %19 = getelementptr inbounds %struct.efi_md, %struct.efi_md* %18, i32 0, i32 4
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.efi_md*, %struct.efi_md** %2, align 8
  %22 = getelementptr inbounds %struct.efi_md, %struct.efi_md* %21, i32 0, i32 3
  %23 = load i32, i32* %22, align 8
  %24 = load %struct.efi_md*, %struct.efi_md** %2, align 8
  %25 = getelementptr inbounds %struct.efi_md, %struct.efi_md* %24, i32 0, i32 2
  %26 = load i32, i32* %25, align 4
  %27 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.16, i64 0, i64 0), i8* %17, i32 %20, i32 %23, i32 %26)
  %28 = load %struct.efi_md*, %struct.efi_md** %2, align 8
  %29 = getelementptr inbounds %struct.efi_md, %struct.efi_md* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 8
  %31 = load i32, i32* @EFI_MD_ATTR_UC, align 4
  %32 = and i32 %30, %31
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %36

34:                                               ; preds = %16
  %35 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.17, i64 0, i64 0))
  br label %36

36:                                               ; preds = %34, %16
  %37 = load %struct.efi_md*, %struct.efi_md** %2, align 8
  %38 = getelementptr inbounds %struct.efi_md, %struct.efi_md* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 8
  %40 = load i32, i32* @EFI_MD_ATTR_WC, align 4
  %41 = and i32 %39, %40
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %45

43:                                               ; preds = %36
  %44 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.18, i64 0, i64 0))
  br label %45

45:                                               ; preds = %43, %36
  %46 = load %struct.efi_md*, %struct.efi_md** %2, align 8
  %47 = getelementptr inbounds %struct.efi_md, %struct.efi_md* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 8
  %49 = load i32, i32* @EFI_MD_ATTR_WT, align 4
  %50 = and i32 %48, %49
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %54

52:                                               ; preds = %45
  %53 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.19, i64 0, i64 0))
  br label %54

54:                                               ; preds = %52, %45
  %55 = load %struct.efi_md*, %struct.efi_md** %2, align 8
  %56 = getelementptr inbounds %struct.efi_md, %struct.efi_md* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 8
  %58 = load i32, i32* @EFI_MD_ATTR_WB, align 4
  %59 = and i32 %57, %58
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %63

61:                                               ; preds = %54
  %62 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.20, i64 0, i64 0))
  br label %63

63:                                               ; preds = %61, %54
  %64 = load %struct.efi_md*, %struct.efi_md** %2, align 8
  %65 = getelementptr inbounds %struct.efi_md, %struct.efi_md* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 8
  %67 = load i32, i32* @EFI_MD_ATTR_UCE, align 4
  %68 = and i32 %66, %67
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %72

70:                                               ; preds = %63
  %71 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.21, i64 0, i64 0))
  br label %72

72:                                               ; preds = %70, %63
  %73 = load %struct.efi_md*, %struct.efi_md** %2, align 8
  %74 = getelementptr inbounds %struct.efi_md, %struct.efi_md* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 8
  %76 = load i32, i32* @EFI_MD_ATTR_WP, align 4
  %77 = and i32 %75, %76
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %81

79:                                               ; preds = %72
  %80 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.22, i64 0, i64 0))
  br label %81

81:                                               ; preds = %79, %72
  %82 = load %struct.efi_md*, %struct.efi_md** %2, align 8
  %83 = getelementptr inbounds %struct.efi_md, %struct.efi_md* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 8
  %85 = load i32, i32* @EFI_MD_ATTR_RP, align 4
  %86 = and i32 %84, %85
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %90

88:                                               ; preds = %81
  %89 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.23, i64 0, i64 0))
  br label %90

90:                                               ; preds = %88, %81
  %91 = load %struct.efi_md*, %struct.efi_md** %2, align 8
  %92 = getelementptr inbounds %struct.efi_md, %struct.efi_md* %91, i32 0, i32 1
  %93 = load i32, i32* %92, align 8
  %94 = load i32, i32* @EFI_MD_ATTR_XP, align 4
  %95 = and i32 %93, %94
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %99

97:                                               ; preds = %90
  %98 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.24, i64 0, i64 0))
  br label %99

99:                                               ; preds = %97, %90
  %100 = load %struct.efi_md*, %struct.efi_md** %2, align 8
  %101 = getelementptr inbounds %struct.efi_md, %struct.efi_md* %100, i32 0, i32 1
  %102 = load i32, i32* %101, align 8
  %103 = load i32, i32* @EFI_MD_ATTR_NV, align 4
  %104 = and i32 %102, %103
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %106, label %108

106:                                              ; preds = %99
  %107 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.25, i64 0, i64 0))
  br label %108

108:                                              ; preds = %106, %99
  %109 = load %struct.efi_md*, %struct.efi_md** %2, align 8
  %110 = getelementptr inbounds %struct.efi_md, %struct.efi_md* %109, i32 0, i32 1
  %111 = load i32, i32* %110, align 8
  %112 = load i32, i32* @EFI_MD_ATTR_MORE_RELIABLE, align 4
  %113 = and i32 %111, %112
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %115, label %117

115:                                              ; preds = %108
  %116 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.26, i64 0, i64 0))
  br label %117

117:                                              ; preds = %115, %108
  %118 = load %struct.efi_md*, %struct.efi_md** %2, align 8
  %119 = getelementptr inbounds %struct.efi_md, %struct.efi_md* %118, i32 0, i32 1
  %120 = load i32, i32* %119, align 8
  %121 = load i32, i32* @EFI_MD_ATTR_RO, align 4
  %122 = and i32 %120, %121
  %123 = icmp ne i32 %122, 0
  br i1 %123, label %124, label %126

124:                                              ; preds = %117
  %125 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.27, i64 0, i64 0))
  br label %126

126:                                              ; preds = %124, %117
  %127 = load %struct.efi_md*, %struct.efi_md** %2, align 8
  %128 = getelementptr inbounds %struct.efi_md, %struct.efi_md* %127, i32 0, i32 1
  %129 = load i32, i32* %128, align 8
  %130 = load i32, i32* @EFI_MD_ATTR_RT, align 4
  %131 = and i32 %129, %130
  %132 = icmp ne i32 %131, 0
  br i1 %132, label %133, label %135

133:                                              ; preds = %126
  %134 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.28, i64 0, i64 0))
  br label %135

135:                                              ; preds = %133, %126
  %136 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.29, i64 0, i64 0))
  ret void
}

declare dso_local i64 @nitems(i8**) #1

declare dso_local i32 @printf(i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
