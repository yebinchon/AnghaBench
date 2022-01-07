; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libpcap/extr_gencode.c_insert_compute_vloffsets.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libpcap/extr_gencode.c_insert_compute_vloffsets.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_18__ = type { i32, %struct.TYPE_17__, %struct.TYPE_15__, i64, %struct.TYPE_14__ }
%struct.TYPE_17__ = type { i32 }
%struct.TYPE_15__ = type { i32 }
%struct.TYPE_14__ = type { i32, i64 }
%struct.block = type { %struct.slist* }
%struct.slist = type { %struct.TYPE_16__ }
%struct.TYPE_16__ = type { i32 }

@BPF_LD = common dso_local global i32 0, align 4
@BPF_W = common dso_local global i32 0, align 4
@BPF_IMM = common dso_local global i32 0, align 4
@BPF_ST = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_18__*, %struct.block*)* @insert_compute_vloffsets to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @insert_compute_vloffsets(%struct.TYPE_18__* %0, %struct.block* %1) #0 {
  %3 = alloca %struct.TYPE_18__*, align 8
  %4 = alloca %struct.block*, align 8
  %5 = alloca %struct.slist*, align 8
  %6 = alloca %struct.slist*, align 8
  store %struct.TYPE_18__* %0, %struct.TYPE_18__** %3, align 8
  store %struct.block* %1, %struct.block** %4, align 8
  %7 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %8 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %7, i32 0, i32 2
  %9 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = icmp ne i32 %10, -1
  br i1 %11, label %12, label %31

12:                                               ; preds = %2
  %13 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %14 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %13, i32 0, i32 4
  %15 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %14, i32 0, i32 1
  %16 = load i64, i64* %15, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %31

18:                                               ; preds = %12
  %19 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %20 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %19, i32 0, i32 4
  %21 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = icmp eq i32 %22, -1
  br i1 %23, label %24, label %31

24:                                               ; preds = %18
  %25 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %26 = call i8* @alloc_reg(%struct.TYPE_18__* %25)
  %27 = ptrtoint i8* %26 to i32
  %28 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %29 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %28, i32 0, i32 4
  %30 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %29, i32 0, i32 0
  store i32 %27, i32* %30, align 8
  br label %31

31:                                               ; preds = %24, %18, %12, %2
  %32 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %33 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  switch i32 %34, label %47 [
    i32 128, label %35
    i32 130, label %38
    i32 131, label %41
    i32 129, label %44
  ]

35:                                               ; preds = %31
  %36 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %37 = call %struct.slist* @gen_load_prism_llprefixlen(%struct.TYPE_18__* %36)
  store %struct.slist* %37, %struct.slist** %5, align 8
  br label %48

38:                                               ; preds = %31
  %39 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %40 = call %struct.slist* @gen_load_avs_llprefixlen(%struct.TYPE_18__* %39)
  store %struct.slist* %40, %struct.slist** %5, align 8
  br label %48

41:                                               ; preds = %31
  %42 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %43 = call %struct.slist* @gen_load_radiotap_llprefixlen(%struct.TYPE_18__* %42)
  store %struct.slist* %43, %struct.slist** %5, align 8
  br label %48

44:                                               ; preds = %31
  %45 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %46 = call %struct.slist* @gen_load_ppi_llprefixlen(%struct.TYPE_18__* %45)
  store %struct.slist* %46, %struct.slist** %5, align 8
  br label %48

47:                                               ; preds = %31
  store %struct.slist* null, %struct.slist** %5, align 8
  br label %48

48:                                               ; preds = %47, %44, %41, %38, %35
  %49 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %50 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  switch i32 %51, label %59 [
    i32 132, label %52
    i32 128, label %52
    i32 130, label %52
    i32 131, label %52
    i32 129, label %52
  ]

52:                                               ; preds = %48, %48, %48, %48, %48
  %53 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %54 = load %struct.slist*, %struct.slist** %5, align 8
  %55 = load %struct.block*, %struct.block** %4, align 8
  %56 = getelementptr inbounds %struct.block, %struct.block* %55, i32 0, i32 0
  %57 = load %struct.slist*, %struct.slist** %56, align 8
  %58 = call %struct.slist* @gen_load_802_11_header_len(%struct.TYPE_18__* %53, %struct.slist* %54, %struct.slist* %57)
  store %struct.slist* %58, %struct.slist** %5, align 8
  br label %59

59:                                               ; preds = %48, %52
  %60 = load %struct.slist*, %struct.slist** %5, align 8
  %61 = icmp eq %struct.slist* %60, null
  br i1 %61, label %62, label %130

62:                                               ; preds = %59
  %63 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %64 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %63, i32 0, i32 3
  %65 = load i64, i64* %64, align 8
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %130

67:                                               ; preds = %62
  %68 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %69 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %68, i32 0, i32 2
  %70 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 8
  %72 = icmp eq i32 %71, -1
  br i1 %72, label %73, label %80

73:                                               ; preds = %67
  %74 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %75 = call i8* @alloc_reg(%struct.TYPE_18__* %74)
  %76 = ptrtoint i8* %75 to i32
  %77 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %78 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %77, i32 0, i32 2
  %79 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %78, i32 0, i32 0
  store i32 %76, i32* %79, align 8
  br label %80

80:                                               ; preds = %73, %67
  %81 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %82 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %81, i32 0, i32 1
  %83 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 4
  %85 = icmp eq i32 %84, -1
  br i1 %85, label %86, label %93

86:                                               ; preds = %80
  %87 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %88 = call i8* @alloc_reg(%struct.TYPE_18__* %87)
  %89 = ptrtoint i8* %88 to i32
  %90 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %91 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %90, i32 0, i32 1
  %92 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %91, i32 0, i32 0
  store i32 %89, i32* %92, align 4
  br label %93

93:                                               ; preds = %86, %80
  %94 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %95 = load i32, i32* @BPF_LD, align 4
  %96 = load i32, i32* @BPF_W, align 4
  %97 = or i32 %95, %96
  %98 = load i32, i32* @BPF_IMM, align 4
  %99 = or i32 %97, %98
  %100 = call %struct.slist* @new_stmt(%struct.TYPE_18__* %94, i32 %99)
  store %struct.slist* %100, %struct.slist** %5, align 8
  %101 = load %struct.slist*, %struct.slist** %5, align 8
  %102 = getelementptr inbounds %struct.slist, %struct.slist* %101, i32 0, i32 0
  %103 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %102, i32 0, i32 0
  store i32 0, i32* %103, align 4
  %104 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %105 = load i32, i32* @BPF_ST, align 4
  %106 = call %struct.slist* @new_stmt(%struct.TYPE_18__* %104, i32 %105)
  store %struct.slist* %106, %struct.slist** %6, align 8
  %107 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %108 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %107, i32 0, i32 2
  %109 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 8
  %111 = load %struct.slist*, %struct.slist** %6, align 8
  %112 = getelementptr inbounds %struct.slist, %struct.slist* %111, i32 0, i32 0
  %113 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %112, i32 0, i32 0
  store i32 %110, i32* %113, align 4
  %114 = load %struct.slist*, %struct.slist** %5, align 8
  %115 = load %struct.slist*, %struct.slist** %6, align 8
  %116 = call i32 @sappend(%struct.slist* %114, %struct.slist* %115)
  %117 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %118 = load i32, i32* @BPF_ST, align 4
  %119 = call %struct.slist* @new_stmt(%struct.TYPE_18__* %117, i32 %118)
  store %struct.slist* %119, %struct.slist** %6, align 8
  %120 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %121 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %120, i32 0, i32 1
  %122 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %121, i32 0, i32 0
  %123 = load i32, i32* %122, align 4
  %124 = load %struct.slist*, %struct.slist** %6, align 8
  %125 = getelementptr inbounds %struct.slist, %struct.slist* %124, i32 0, i32 0
  %126 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %125, i32 0, i32 0
  store i32 %123, i32* %126, align 4
  %127 = load %struct.slist*, %struct.slist** %5, align 8
  %128 = load %struct.slist*, %struct.slist** %6, align 8
  %129 = call i32 @sappend(%struct.slist* %127, %struct.slist* %128)
  br label %130

130:                                              ; preds = %93, %62, %59
  %131 = load %struct.slist*, %struct.slist** %5, align 8
  %132 = icmp ne %struct.slist* %131, null
  br i1 %132, label %133, label %142

133:                                              ; preds = %130
  %134 = load %struct.slist*, %struct.slist** %5, align 8
  %135 = load %struct.block*, %struct.block** %4, align 8
  %136 = getelementptr inbounds %struct.block, %struct.block* %135, i32 0, i32 0
  %137 = load %struct.slist*, %struct.slist** %136, align 8
  %138 = call i32 @sappend(%struct.slist* %134, %struct.slist* %137)
  %139 = load %struct.slist*, %struct.slist** %5, align 8
  %140 = load %struct.block*, %struct.block** %4, align 8
  %141 = getelementptr inbounds %struct.block, %struct.block* %140, i32 0, i32 0
  store %struct.slist* %139, %struct.slist** %141, align 8
  br label %142

142:                                              ; preds = %133, %130
  ret void
}

declare dso_local i8* @alloc_reg(%struct.TYPE_18__*) #1

declare dso_local %struct.slist* @gen_load_prism_llprefixlen(%struct.TYPE_18__*) #1

declare dso_local %struct.slist* @gen_load_avs_llprefixlen(%struct.TYPE_18__*) #1

declare dso_local %struct.slist* @gen_load_radiotap_llprefixlen(%struct.TYPE_18__*) #1

declare dso_local %struct.slist* @gen_load_ppi_llprefixlen(%struct.TYPE_18__*) #1

declare dso_local %struct.slist* @gen_load_802_11_header_len(%struct.TYPE_18__*, %struct.slist*, %struct.slist*) #1

declare dso_local %struct.slist* @new_stmt(%struct.TYPE_18__*, i32) #1

declare dso_local i32 @sappend(%struct.slist*, %struct.slist*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
