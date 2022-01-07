; ModuleID = '/home/carl/AnghaBench/freebsd/sbin/pfctl/extr_pfctl_osfp.c_import_fingerprint.c'
source_filename = "/home/carl/AnghaBench/freebsd/sbin/pfctl/extr_pfctl_osfp.c_import_fingerprint.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pf_osfp_ioctl = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i32, i32 }
%struct.name_entry = type { i32, i8*, i32 }

@classes = common dso_local global i32 0, align 4
@class_count = common dso_local global i8* null, align 8
@fingerprint_count = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"import signature %d:%d:%d\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @import_fingerprint(%struct.pf_osfp_ioctl* %0) #0 {
  %2 = alloca %struct.pf_osfp_ioctl*, align 8
  %3 = alloca %struct.name_entry*, align 8
  %4 = alloca %struct.name_entry*, align 8
  %5 = alloca %struct.name_entry*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.pf_osfp_ioctl* %0, %struct.pf_osfp_ioctl** %2, align 8
  %9 = load %struct.pf_osfp_ioctl*, %struct.pf_osfp_ioctl** %2, align 8
  %10 = getelementptr inbounds %struct.pf_osfp_ioctl, %struct.pf_osfp_ioctl* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 3
  %12 = load i32, i32* %11, align 4
  %13 = load i32, i32* %6, align 4
  %14 = load i32, i32* %7, align 4
  %15 = load i32, i32* %8, align 4
  %16 = call i32 @PF_OSFP_UNPACK(i32 %12, i32 %13, i32 %14, i32 %15)
  %17 = load %struct.pf_osfp_ioctl*, %struct.pf_osfp_ioctl** %2, align 8
  %18 = getelementptr inbounds %struct.pf_osfp_ioctl, %struct.pf_osfp_ioctl* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 2
  %20 = load i32, i32* %19, align 4
  %21 = call %struct.name_entry* @fingerprint_name_entry(i32* @classes, i32 %20)
  store %struct.name_entry* %21, %struct.name_entry** %3, align 8
  %22 = load %struct.name_entry*, %struct.name_entry** %3, align 8
  %23 = getelementptr inbounds %struct.name_entry, %struct.name_entry* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %26, label %33

26:                                               ; preds = %1
  %27 = load i32, i32* %6, align 4
  %28 = load %struct.name_entry*, %struct.name_entry** %3, align 8
  %29 = getelementptr inbounds %struct.name_entry, %struct.name_entry* %28, i32 0, i32 0
  store i32 %27, i32* %29, align 8
  %30 = load i8*, i8** @class_count, align 8
  %31 = load i32, i32* %6, align 4
  %32 = call i8* @MAX(i8* %30, i32 %31)
  store i8* %32, i8** @class_count, align 8
  br label %33

33:                                               ; preds = %26, %1
  %34 = load %struct.name_entry*, %struct.name_entry** %3, align 8
  %35 = getelementptr inbounds %struct.name_entry, %struct.name_entry* %34, i32 0, i32 2
  %36 = load %struct.pf_osfp_ioctl*, %struct.pf_osfp_ioctl** %2, align 8
  %37 = getelementptr inbounds %struct.pf_osfp_ioctl, %struct.pf_osfp_ioctl* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = call %struct.name_entry* @fingerprint_name_entry(i32* %35, i32 %39)
  store %struct.name_entry* %40, %struct.name_entry** %4, align 8
  %41 = load %struct.name_entry*, %struct.name_entry** %4, align 8
  %42 = icmp ne %struct.name_entry* %41, null
  br i1 %42, label %43, label %87

43:                                               ; preds = %33
  %44 = load %struct.name_entry*, %struct.name_entry** %4, align 8
  %45 = getelementptr inbounds %struct.name_entry, %struct.name_entry* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %48, label %59

48:                                               ; preds = %43
  %49 = load i32, i32* %7, align 4
  %50 = load %struct.name_entry*, %struct.name_entry** %4, align 8
  %51 = getelementptr inbounds %struct.name_entry, %struct.name_entry* %50, i32 0, i32 0
  store i32 %49, i32* %51, align 8
  %52 = load %struct.name_entry*, %struct.name_entry** %3, align 8
  %53 = getelementptr inbounds %struct.name_entry, %struct.name_entry* %52, i32 0, i32 1
  %54 = load i8*, i8** %53, align 8
  %55 = load i32, i32* %7, align 4
  %56 = call i8* @MAX(i8* %54, i32 %55)
  %57 = load %struct.name_entry*, %struct.name_entry** %3, align 8
  %58 = getelementptr inbounds %struct.name_entry, %struct.name_entry* %57, i32 0, i32 1
  store i8* %56, i8** %58, align 8
  br label %59

59:                                               ; preds = %48, %43
  %60 = load %struct.name_entry*, %struct.name_entry** %4, align 8
  %61 = getelementptr inbounds %struct.name_entry, %struct.name_entry* %60, i32 0, i32 2
  %62 = load %struct.pf_osfp_ioctl*, %struct.pf_osfp_ioctl** %2, align 8
  %63 = getelementptr inbounds %struct.pf_osfp_ioctl, %struct.pf_osfp_ioctl* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = call %struct.name_entry* @fingerprint_name_entry(i32* %61, i32 %65)
  store %struct.name_entry* %66, %struct.name_entry** %5, align 8
  %67 = load %struct.name_entry*, %struct.name_entry** %5, align 8
  %68 = icmp ne %struct.name_entry* %67, null
  br i1 %68, label %69, label %86

69:                                               ; preds = %59
  %70 = load %struct.name_entry*, %struct.name_entry** %5, align 8
  %71 = getelementptr inbounds %struct.name_entry, %struct.name_entry* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 8
  %73 = icmp eq i32 %72, 0
  br i1 %73, label %74, label %85

74:                                               ; preds = %69
  %75 = load i32, i32* %8, align 4
  %76 = load %struct.name_entry*, %struct.name_entry** %5, align 8
  %77 = getelementptr inbounds %struct.name_entry, %struct.name_entry* %76, i32 0, i32 0
  store i32 %75, i32* %77, align 8
  %78 = load %struct.name_entry*, %struct.name_entry** %4, align 8
  %79 = getelementptr inbounds %struct.name_entry, %struct.name_entry* %78, i32 0, i32 1
  %80 = load i8*, i8** %79, align 8
  %81 = load i32, i32* %8, align 4
  %82 = call i8* @MAX(i8* %80, i32 %81)
  %83 = load %struct.name_entry*, %struct.name_entry** %4, align 8
  %84 = getelementptr inbounds %struct.name_entry, %struct.name_entry* %83, i32 0, i32 1
  store i8* %82, i8** %84, align 8
  br label %85

85:                                               ; preds = %74, %69
  br label %86

86:                                               ; preds = %85, %59
  br label %87

87:                                               ; preds = %86, %33
  %88 = load i32, i32* @fingerprint_count, align 4
  %89 = add nsw i32 %88, 1
  store i32 %89, i32* @fingerprint_count, align 4
  %90 = load %struct.pf_osfp_ioctl*, %struct.pf_osfp_ioctl** %2, align 8
  %91 = load i32, i32* %6, align 4
  %92 = load i32, i32* %7, align 4
  %93 = load i32, i32* %8, align 4
  %94 = call i32 @DEBUG(%struct.pf_osfp_ioctl* %90, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 %91, i32 %92, i32 %93)
  ret void
}

declare dso_local i32 @PF_OSFP_UNPACK(i32, i32, i32, i32) #1

declare dso_local %struct.name_entry* @fingerprint_name_entry(i32*, i32) #1

declare dso_local i8* @MAX(i8*, i32) #1

declare dso_local i32 @DEBUG(%struct.pf_osfp_ioctl*, i8*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
