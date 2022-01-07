; ModuleID = '/home/carl/AnghaBench/freebsd/stand/common/extr_disk.c_ptable_print.c'
source_filename = "/home/carl/AnghaBench/freebsd/stand/common/extr_disk.c_ptable_print.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ptable_entry = type { i64, i32, i64, i64 }
%struct.disk_devdesc = type { i32, i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32 }
%struct.print_args = type { i8*, i64, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32, i32, i64 }
%struct.open_disk = type { i32 }
%struct.ptable = type { i32 }

@.str = private unnamed_addr constant [11 x i8] c"  %s%s: %s\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"\09\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"\09%s\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@PART_FREEBSD = common dso_local global i64 0, align 8
@D_PARTNONE = common dso_local global i32 0, align 4
@ptblread = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [7 x i8] c"  %s%s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*, %struct.ptable_entry*)* @ptable_print to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ptable_print(i8* %0, i8* %1, %struct.ptable_entry* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.ptable_entry*, align 8
  %8 = alloca %struct.disk_devdesc, align 4
  %9 = alloca %struct.print_args*, align 8
  %10 = alloca %struct.print_args, align 8
  %11 = alloca %struct.open_disk*, align 8
  %12 = alloca %struct.ptable*, align 8
  %13 = alloca [80 x i8], align 16
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i64, align 8
  store i8* %0, i8** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.ptable_entry* %2, %struct.ptable_entry** %7, align 8
  %17 = load i8*, i8** %5, align 8
  %18 = bitcast i8* %17 to %struct.print_args*
  store %struct.print_args* %18, %struct.print_args** %9, align 8
  %19 = load %struct.print_args*, %struct.print_args** %9, align 8
  %20 = getelementptr inbounds %struct.print_args, %struct.print_args* %19, i32 0, i32 2
  %21 = load %struct.TYPE_6__*, %struct.TYPE_6__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %22, i32 0, i32 2
  %24 = load i64, i64* %23, align 8
  %25 = inttoptr i64 %24 to %struct.open_disk*
  store %struct.open_disk* %25, %struct.open_disk** %11, align 8
  %26 = load %struct.open_disk*, %struct.open_disk** %11, align 8
  %27 = getelementptr inbounds %struct.open_disk, %struct.open_disk* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  store i32 %28, i32* %15, align 4
  %29 = load %struct.ptable_entry*, %struct.ptable_entry** %7, align 8
  %30 = getelementptr inbounds %struct.ptable_entry, %struct.ptable_entry* %29, i32 0, i32 3
  %31 = load i64, i64* %30, align 8
  %32 = load %struct.ptable_entry*, %struct.ptable_entry** %7, align 8
  %33 = getelementptr inbounds %struct.ptable_entry, %struct.ptable_entry* %32, i32 0, i32 2
  %34 = load i64, i64* %33, align 8
  %35 = sub nsw i64 %31, %34
  %36 = add nsw i64 %35, 1
  store i64 %36, i64* %16, align 8
  %37 = getelementptr inbounds [80 x i8], [80 x i8]* %13, i64 0, i64 0
  %38 = load %struct.print_args*, %struct.print_args** %9, align 8
  %39 = getelementptr inbounds %struct.print_args, %struct.print_args* %38, i32 0, i32 0
  %40 = load i8*, i8** %39, align 8
  %41 = load i8*, i8** %6, align 8
  %42 = load %struct.ptable_entry*, %struct.ptable_entry** %7, align 8
  %43 = getelementptr inbounds %struct.ptable_entry, %struct.ptable_entry* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = call i32 @parttype2str(i64 %44)
  %46 = call i32 (i8*, i32, i8*, i8*, ...) @snprintf(i8* %37, i32 80, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i8* %40, i8* %41, i32 %45)
  %47 = getelementptr inbounds [80 x i8], [80 x i8]* %13, i64 0, i64 0
  %48 = call i64 @pager_output(i8* %47)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %51

50:                                               ; preds = %3
  store i32 1, i32* %4, align 4
  br label %143

51:                                               ; preds = %3
  %52 = load %struct.print_args*, %struct.print_args** %9, align 8
  %53 = getelementptr inbounds %struct.print_args, %struct.print_args* %52, i32 0, i32 1
  %54 = load i64, i64* %53, align 8
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %73

56:                                               ; preds = %51
  %57 = getelementptr inbounds [80 x i8], [80 x i8]* %13, i64 0, i64 0
  %58 = call i32 @strlen(i8* %57)
  %59 = icmp slt i32 %58, 24
  br i1 %59, label %60, label %62

60:                                               ; preds = %56
  %61 = call i64 @pager_output(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  br label %62

62:                                               ; preds = %60, %56
  %63 = getelementptr inbounds [80 x i8], [80 x i8]* %13, i64 0, i64 0
  %64 = load i64, i64* %16, align 8
  %65 = load i32, i32* %15, align 4
  %66 = call i8* @display_size(i64 %64, i32 %65)
  %67 = call i32 (i8*, i32, i8*, i8*, ...) @snprintf(i8* %63, i32 80, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i8* %66)
  %68 = getelementptr inbounds [80 x i8], [80 x i8]* %13, i64 0, i64 0
  %69 = call i64 @pager_output(i8* %68)
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %72

71:                                               ; preds = %62
  store i32 1, i32* %4, align 4
  br label %143

72:                                               ; preds = %62
  br label %73

73:                                               ; preds = %72, %51
  %74 = call i64 @pager_output(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0))
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %77

76:                                               ; preds = %73
  store i32 1, i32* %4, align 4
  br label %143

77:                                               ; preds = %73
  store i32 0, i32* %14, align 4
  %78 = load %struct.ptable_entry*, %struct.ptable_entry** %7, align 8
  %79 = getelementptr inbounds %struct.ptable_entry, %struct.ptable_entry* %78, i32 0, i32 0
  %80 = load i64, i64* %79, align 8
  %81 = load i64, i64* @PART_FREEBSD, align 8
  %82 = icmp eq i64 %80, %81
  br i1 %82, label %83, label %141

83:                                               ; preds = %77
  %84 = load %struct.print_args*, %struct.print_args** %9, align 8
  %85 = getelementptr inbounds %struct.print_args, %struct.print_args* %84, i32 0, i32 2
  %86 = load %struct.TYPE_6__*, %struct.TYPE_6__** %85, align 8
  %87 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %86, i32 0, i32 0
  %88 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %87, i32 0, i32 1
  %89 = load i32, i32* %88, align 4
  %90 = getelementptr inbounds %struct.disk_devdesc, %struct.disk_devdesc* %8, i32 0, i32 2
  %91 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %90, i32 0, i32 1
  store i32 %89, i32* %91, align 4
  %92 = load %struct.print_args*, %struct.print_args** %9, align 8
  %93 = getelementptr inbounds %struct.print_args, %struct.print_args* %92, i32 0, i32 2
  %94 = load %struct.TYPE_6__*, %struct.TYPE_6__** %93, align 8
  %95 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %94, i32 0, i32 0
  %96 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 8
  %98 = getelementptr inbounds %struct.disk_devdesc, %struct.disk_devdesc* %8, i32 0, i32 2
  %99 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %98, i32 0, i32 0
  store i32 %97, i32* %99, align 4
  %100 = load %struct.ptable_entry*, %struct.ptable_entry** %7, align 8
  %101 = getelementptr inbounds %struct.ptable_entry, %struct.ptable_entry* %100, i32 0, i32 1
  %102 = load i32, i32* %101, align 8
  %103 = getelementptr inbounds %struct.disk_devdesc, %struct.disk_devdesc* %8, i32 0, i32 1
  store i32 %102, i32* %103, align 4
  %104 = load i32, i32* @D_PARTNONE, align 4
  %105 = getelementptr inbounds %struct.disk_devdesc, %struct.disk_devdesc* %8, i32 0, i32 0
  store i32 %104, i32* %105, align 4
  %106 = load i64, i64* %16, align 8
  %107 = load i32, i32* %15, align 4
  %108 = call i64 @disk_open(%struct.disk_devdesc* %8, i64 %106, i32 %107)
  %109 = icmp eq i64 %108, 0
  br i1 %109, label %110, label %140

110:                                              ; preds = %83
  %111 = load i64, i64* %16, align 8
  %112 = load i32, i32* %15, align 4
  %113 = load i32, i32* @ptblread, align 4
  %114 = call %struct.ptable* @ptable_open(%struct.disk_devdesc* %8, i64 %111, i32 %112, i32 %113)
  store %struct.ptable* %114, %struct.ptable** %12, align 8
  %115 = load %struct.ptable*, %struct.ptable** %12, align 8
  %116 = icmp ne %struct.ptable* %115, null
  br i1 %116, label %117, label %138

117:                                              ; preds = %110
  %118 = getelementptr inbounds [80 x i8], [80 x i8]* %13, i64 0, i64 0
  %119 = load %struct.print_args*, %struct.print_args** %9, align 8
  %120 = getelementptr inbounds %struct.print_args, %struct.print_args* %119, i32 0, i32 0
  %121 = load i8*, i8** %120, align 8
  %122 = load i8*, i8** %6, align 8
  %123 = call i32 (i8*, i32, i8*, i8*, ...) @snprintf(i8* %118, i32 80, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0), i8* %121, i8* %122)
  %124 = load %struct.print_args*, %struct.print_args** %9, align 8
  %125 = getelementptr inbounds %struct.print_args, %struct.print_args* %124, i32 0, i32 2
  %126 = load %struct.TYPE_6__*, %struct.TYPE_6__** %125, align 8
  %127 = getelementptr inbounds %struct.print_args, %struct.print_args* %10, i32 0, i32 2
  store %struct.TYPE_6__* %126, %struct.TYPE_6__** %127, align 8
  %128 = getelementptr inbounds [80 x i8], [80 x i8]* %13, i64 0, i64 0
  %129 = getelementptr inbounds %struct.print_args, %struct.print_args* %10, i32 0, i32 0
  store i8* %128, i8** %129, align 8
  %130 = load %struct.print_args*, %struct.print_args** %9, align 8
  %131 = getelementptr inbounds %struct.print_args, %struct.print_args* %130, i32 0, i32 1
  %132 = load i64, i64* %131, align 8
  %133 = getelementptr inbounds %struct.print_args, %struct.print_args* %10, i32 0, i32 1
  store i64 %132, i64* %133, align 8
  %134 = load %struct.ptable*, %struct.ptable** %12, align 8
  %135 = call i32 @ptable_iterate(%struct.ptable* %134, %struct.print_args* %10, i32 (i8*, i8*, %struct.ptable_entry*)* @ptable_print)
  store i32 %135, i32* %14, align 4
  %136 = load %struct.ptable*, %struct.ptable** %12, align 8
  %137 = call i32 @ptable_close(%struct.ptable* %136)
  br label %138

138:                                              ; preds = %117, %110
  %139 = call i32 @disk_close(%struct.disk_devdesc* %8)
  br label %140

140:                                              ; preds = %138, %83
  br label %141

141:                                              ; preds = %140, %77
  %142 = load i32, i32* %14, align 4
  store i32 %142, i32* %4, align 4
  br label %143

143:                                              ; preds = %141, %76, %71, %50
  %144 = load i32, i32* %4, align 4
  ret i32 %144
}

declare dso_local i32 @snprintf(i8*, i32, i8*, i8*, ...) #1

declare dso_local i32 @parttype2str(i64) #1

declare dso_local i64 @pager_output(i8*) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i8* @display_size(i64, i32) #1

declare dso_local i64 @disk_open(%struct.disk_devdesc*, i64, i32) #1

declare dso_local %struct.ptable* @ptable_open(%struct.disk_devdesc*, i64, i32, i32) #1

declare dso_local i32 @ptable_iterate(%struct.ptable*, %struct.print_args*, i32 (i8*, i8*, %struct.ptable_entry*)*) #1

declare dso_local i32 @ptable_close(%struct.ptable*) #1

declare dso_local i32 @disk_close(%struct.disk_devdesc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
