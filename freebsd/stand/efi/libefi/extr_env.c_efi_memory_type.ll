; ModuleID = '/home/carl/AnghaBench/freebsd/stand/efi/libefi/extr_env.c_efi_memory_type.c'
source_filename = "/home/carl/AnghaBench/freebsd/stand/efi/libefi/extr_env.c_efi_memory_type.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

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
@__const.efi_memory_type.types = private unnamed_addr constant [15 x i8*] [i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.7, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.8, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.9, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.10, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.11, i32 0, i32 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.12, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.13, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.14, i32 0, i32 0)], align 16
@.str.15 = private unnamed_addr constant [8 x i8] c"Unknown\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @efi_memory_type(i32 %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  %4 = alloca [15 x i8*], align 16
  store i32 %0, i32* %3, align 4
  %5 = bitcast [15 x i8*]* %4 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %5, i8* align 16 bitcast ([15 x i8*]* @__const.efi_memory_type.types to i8*), i64 120, i1 false)
  %6 = load i32, i32* %3, align 4
  switch i32 %6, label %12 [
    i32 131, label %7
    i32 137, label %7
    i32 136, label %7
    i32 140, label %7
    i32 139, label %7
    i32 130, label %7
    i32 129, label %7
    i32 138, label %7
    i32 128, label %7
    i32 141, label %7
    i32 142, label %7
    i32 135, label %7
    i32 134, label %7
    i32 133, label %7
    i32 132, label %7
  ]

7:                                                ; preds = %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1
  %8 = load i32, i32* %3, align 4
  %9 = sext i32 %8 to i64
  %10 = getelementptr inbounds [15 x i8*], [15 x i8*]* %4, i64 0, i64 %9
  %11 = load i8*, i8** %10, align 8
  store i8* %11, i8** %2, align 8
  br label %13

12:                                               ; preds = %1
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.15, i64 0, i64 0), i8** %2, align 8
  br label %13

13:                                               ; preds = %12, %7
  %14 = load i8*, i8** %2, align 8
  ret i8* %14
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
