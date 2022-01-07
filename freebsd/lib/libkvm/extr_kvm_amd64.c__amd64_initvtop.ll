; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libkvm/extr_kvm_amd64.c__amd64_initvtop.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libkvm/extr_kvm_amd64.c__amd64_initvtop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i64, %struct.vmstate*, i32 }
%struct.vmstate = type { i64*, i32, i32 }
%struct.kvm_nlist = type { i8*, i64 }

@.str = private unnamed_addr constant [19 x i8] c"cannot allocate vm\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"kernbase\00", align 1
@.str.2 = private unnamed_addr constant [27 x i8] c"bad namelist - no kernbase\00", align 1
@.str.3 = private unnamed_addr constant [10 x i8] c"KPML4phys\00", align 1
@.str.4 = private unnamed_addr constant [28 x i8] c"bad namelist - no KPML4phys\00", align 1
@.str.5 = private unnamed_addr constant [22 x i8] c"cannot read KPML4phys\00", align 1
@AMD64_PAGE_SIZE = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [21 x i8] c"cannot allocate PML4\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_8__*)* @_amd64_initvtop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @_amd64_initvtop(%struct.TYPE_8__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_8__*, align 8
  %4 = alloca [2 x %struct.kvm_nlist], align 16
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64*, align 8
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %3, align 8
  %8 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %9 = call i64* @_kvm_malloc(%struct.TYPE_8__* %8, i32 16)
  %10 = bitcast i64* %9 to %struct.vmstate*
  %11 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %12 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %11, i32 0, i32 1
  store %struct.vmstate* %10, %struct.vmstate** %12, align 8
  %13 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %14 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %13, i32 0, i32 1
  %15 = load %struct.vmstate*, %struct.vmstate** %14, align 8
  %16 = icmp eq %struct.vmstate* %15, null
  br i1 %16, label %17, label %23

17:                                               ; preds = %1
  %18 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %19 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %20 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %19, i32 0, i32 2
  %21 = load i32, i32* %20, align 8
  %22 = call i32 @_kvm_err(%struct.TYPE_8__* %18, i32 %21, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %2, align 4
  br label %131

23:                                               ; preds = %1
  %24 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %25 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %24, i32 0, i32 1
  %26 = load %struct.vmstate*, %struct.vmstate** %25, align 8
  %27 = getelementptr inbounds %struct.vmstate, %struct.vmstate* %26, i32 0, i32 0
  store i64* null, i64** %27, align 8
  %28 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %29 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = icmp eq i64 %30, 0
  br i1 %31, label %32, label %46

32:                                               ; preds = %23
  %33 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %34 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %35 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %34, i32 0, i32 1
  %36 = load %struct.vmstate*, %struct.vmstate** %35, align 8
  %37 = getelementptr inbounds %struct.vmstate, %struct.vmstate* %36, i32 0, i32 2
  %38 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %39 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %38, i32 0, i32 1
  %40 = load %struct.vmstate*, %struct.vmstate** %39, align 8
  %41 = getelementptr inbounds %struct.vmstate, %struct.vmstate* %40, i32 0, i32 1
  %42 = call i32 @_kvm_read_core_phdrs(%struct.TYPE_8__* %33, i32* %37, i32* %41)
  %43 = icmp eq i32 %42, -1
  br i1 %43, label %44, label %45

44:                                               ; preds = %32
  store i32 -1, i32* %2, align 4
  br label %131

45:                                               ; preds = %32
  br label %46

46:                                               ; preds = %45, %23
  %47 = getelementptr inbounds [2 x %struct.kvm_nlist], [2 x %struct.kvm_nlist]* %4, i64 0, i64 0
  %48 = getelementptr inbounds %struct.kvm_nlist, %struct.kvm_nlist* %47, i32 0, i32 0
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i8** %48, align 16
  %49 = getelementptr inbounds [2 x %struct.kvm_nlist], [2 x %struct.kvm_nlist]* %4, i64 0, i64 1
  %50 = getelementptr inbounds %struct.kvm_nlist, %struct.kvm_nlist* %49, i32 0, i32 0
  store i8* null, i8** %50, align 16
  %51 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %52 = getelementptr inbounds [2 x %struct.kvm_nlist], [2 x %struct.kvm_nlist]* %4, i64 0, i64 0
  %53 = call i64 @kvm_nlist2(%struct.TYPE_8__* %51, %struct.kvm_nlist* %52)
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %61

55:                                               ; preds = %46
  %56 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %57 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %58 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %57, i32 0, i32 2
  %59 = load i32, i32* %58, align 8
  %60 = call i32 @_kvm_err(%struct.TYPE_8__* %56, i32 %59, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0))
  store i32 -1, i32* %2, align 4
  br label %131

61:                                               ; preds = %46
  %62 = getelementptr inbounds [2 x %struct.kvm_nlist], [2 x %struct.kvm_nlist]* %4, i64 0, i64 0
  %63 = getelementptr inbounds %struct.kvm_nlist, %struct.kvm_nlist* %62, i32 0, i32 1
  %64 = load i64, i64* %63, align 8
  store i64 %64, i64* %6, align 8
  %65 = getelementptr inbounds [2 x %struct.kvm_nlist], [2 x %struct.kvm_nlist]* %4, i64 0, i64 0
  %66 = getelementptr inbounds %struct.kvm_nlist, %struct.kvm_nlist* %65, i32 0, i32 0
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0), i8** %66, align 16
  %67 = getelementptr inbounds [2 x %struct.kvm_nlist], [2 x %struct.kvm_nlist]* %4, i64 0, i64 1
  %68 = getelementptr inbounds %struct.kvm_nlist, %struct.kvm_nlist* %67, i32 0, i32 0
  store i8* null, i8** %68, align 16
  %69 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %70 = getelementptr inbounds [2 x %struct.kvm_nlist], [2 x %struct.kvm_nlist]* %4, i64 0, i64 0
  %71 = call i64 @kvm_nlist2(%struct.TYPE_8__* %69, %struct.kvm_nlist* %70)
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %79

73:                                               ; preds = %61
  %74 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %75 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %76 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %75, i32 0, i32 2
  %77 = load i32, i32* %76, align 8
  %78 = call i32 @_kvm_err(%struct.TYPE_8__* %74, i32 %77, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.4, i64 0, i64 0))
  store i32 -1, i32* %2, align 4
  br label %131

79:                                               ; preds = %61
  %80 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %81 = getelementptr inbounds [2 x %struct.kvm_nlist], [2 x %struct.kvm_nlist]* %4, i64 0, i64 0
  %82 = getelementptr inbounds %struct.kvm_nlist, %struct.kvm_nlist* %81, i32 0, i32 1
  %83 = load i64, i64* %82, align 8
  %84 = load i64, i64* %6, align 8
  %85 = sub nsw i64 %83, %84
  %86 = call i32 @kvm_read2(%struct.TYPE_8__* %80, i64 %85, i64* %5, i32 8)
  %87 = sext i32 %86 to i64
  %88 = icmp ne i64 %87, 8
  br i1 %88, label %89, label %95

89:                                               ; preds = %79
  %90 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %91 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %92 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %91, i32 0, i32 2
  %93 = load i32, i32* %92, align 8
  %94 = call i32 @_kvm_err(%struct.TYPE_8__* %90, i32 %93, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.5, i64 0, i64 0))
  store i32 -1, i32* %2, align 4
  br label %131

95:                                               ; preds = %79
  %96 = load i64, i64* %5, align 8
  %97 = call i64 @le64toh(i64 %96)
  store i64 %97, i64* %5, align 8
  %98 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %99 = load i32, i32* @AMD64_PAGE_SIZE, align 4
  %100 = call i64* @_kvm_malloc(%struct.TYPE_8__* %98, i32 %99)
  store i64* %100, i64** %7, align 8
  %101 = load i64*, i64** %7, align 8
  %102 = icmp eq i64* %101, null
  br i1 %102, label %103, label %109

103:                                              ; preds = %95
  %104 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %105 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %106 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %105, i32 0, i32 2
  %107 = load i32, i32* %106, align 8
  %108 = call i32 @_kvm_err(%struct.TYPE_8__* %104, i32 %107, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.6, i64 0, i64 0))
  store i32 -1, i32* %2, align 4
  br label %131

109:                                              ; preds = %95
  %110 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %111 = load i64, i64* %5, align 8
  %112 = load i64*, i64** %7, align 8
  %113 = load i32, i32* @AMD64_PAGE_SIZE, align 4
  %114 = call i32 @kvm_read2(%struct.TYPE_8__* %110, i64 %111, i64* %112, i32 %113)
  %115 = load i32, i32* @AMD64_PAGE_SIZE, align 4
  %116 = icmp ne i32 %114, %115
  br i1 %116, label %117, label %125

117:                                              ; preds = %109
  %118 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %119 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %120 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %119, i32 0, i32 2
  %121 = load i32, i32* %120, align 8
  %122 = call i32 @_kvm_err(%struct.TYPE_8__* %118, i32 %121, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.5, i64 0, i64 0))
  %123 = load i64*, i64** %7, align 8
  %124 = call i32 @free(i64* %123)
  store i32 -1, i32* %2, align 4
  br label %131

125:                                              ; preds = %109
  %126 = load i64*, i64** %7, align 8
  %127 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %128 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %127, i32 0, i32 1
  %129 = load %struct.vmstate*, %struct.vmstate** %128, align 8
  %130 = getelementptr inbounds %struct.vmstate, %struct.vmstate* %129, i32 0, i32 0
  store i64* %126, i64** %130, align 8
  store i32 0, i32* %2, align 4
  br label %131

131:                                              ; preds = %125, %117, %103, %89, %73, %55, %44, %17
  %132 = load i32, i32* %2, align 4
  ret i32 %132
}

declare dso_local i64* @_kvm_malloc(%struct.TYPE_8__*, i32) #1

declare dso_local i32 @_kvm_err(%struct.TYPE_8__*, i32, i8*) #1

declare dso_local i32 @_kvm_read_core_phdrs(%struct.TYPE_8__*, i32*, i32*) #1

declare dso_local i64 @kvm_nlist2(%struct.TYPE_8__*, %struct.kvm_nlist*) #1

declare dso_local i32 @kvm_read2(%struct.TYPE_8__*, i64, i64*, i32) #1

declare dso_local i64 @le64toh(i64) #1

declare dso_local i32 @free(i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
