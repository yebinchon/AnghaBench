; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libkvm/extr_kvm_sparc64.c__sparc64_initvtop.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libkvm/extr_kvm_sparc64.c__sparc64_initvtop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, %struct.vmstate* }
%struct.vmstate = type { i32, i32, i64, i8*, i8*, %struct.vmstate*, i8*, i8*, i8*, i8*, i8*, i8* }
%struct.sparc64_dump_hdr = type { i32, i32, i64, i8*, i8*, %struct.sparc64_dump_hdr*, i8*, i8*, i8*, i8*, i8*, i8* }
%struct.sparc64_dump_reg = type { i32, i32, i64, i8*, i8*, %struct.sparc64_dump_reg*, i8*, i8*, i8*, i8*, i8*, i8* }

@.str = private unnamed_addr constant [19 x i8] c"cannot allocate vm\00", align 1
@.str.1 = private unnamed_addr constant [24 x i8] c"cannot allocate regions\00", align 1
@_sparc64_reg_cmp = common dso_local global i32 0, align 4
@KVM_OFF_NOTFOUND = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [22 x i8] c"tsb not found in dump\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_6__*)* @_sparc64_initvtop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @_sparc64_initvtop(%struct.TYPE_6__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_6__*, align 8
  %4 = alloca %struct.sparc64_dump_hdr, align 8
  %5 = alloca %struct.sparc64_dump_reg*, align 8
  %6 = alloca %struct.vmstate*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %3, align 8
  %9 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %10 = call %struct.vmstate* @_kvm_malloc(%struct.TYPE_6__* %9, i64 88)
  store %struct.vmstate* %10, %struct.vmstate** %6, align 8
  %11 = load %struct.vmstate*, %struct.vmstate** %6, align 8
  %12 = icmp eq %struct.vmstate* %11, null
  br i1 %12, label %13, label %19

13:                                               ; preds = %1
  %14 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %15 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %16 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = call i32 @_kvm_err(%struct.TYPE_6__* %14, i32 %17, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %2, align 4
  br label %165

19:                                               ; preds = %1
  %20 = load %struct.vmstate*, %struct.vmstate** %6, align 8
  %21 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %22 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %21, i32 0, i32 1
  store %struct.vmstate* %20, %struct.vmstate** %22, align 8
  %23 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %24 = bitcast %struct.sparc64_dump_hdr* %4 to %struct.vmstate*
  %25 = call i32 @_sparc64_read_phys(%struct.TYPE_6__* %23, i32 0, %struct.vmstate* %24, i64 88)
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %28, label %27

27:                                               ; preds = %19
  br label %162

28:                                               ; preds = %19
  %29 = getelementptr inbounds %struct.sparc64_dump_hdr, %struct.sparc64_dump_hdr* %4, i32 0, i32 11
  %30 = load i8*, i8** %29, align 8
  %31 = call i8* @be64toh(i8* %30)
  %32 = getelementptr inbounds %struct.sparc64_dump_hdr, %struct.sparc64_dump_hdr* %4, i32 0, i32 11
  store i8* %31, i8** %32, align 8
  %33 = getelementptr inbounds %struct.sparc64_dump_hdr, %struct.sparc64_dump_hdr* %4, i32 0, i32 4
  %34 = load i8*, i8** %33, align 8
  %35 = call i8* @be64toh(i8* %34)
  %36 = getelementptr inbounds %struct.sparc64_dump_hdr, %struct.sparc64_dump_hdr* %4, i32 0, i32 4
  store i8* %35, i8** %36, align 8
  %37 = getelementptr inbounds %struct.sparc64_dump_hdr, %struct.sparc64_dump_hdr* %4, i32 0, i32 3
  %38 = load i8*, i8** %37, align 8
  %39 = call i8* @be64toh(i8* %38)
  %40 = getelementptr inbounds %struct.sparc64_dump_hdr, %struct.sparc64_dump_hdr* %4, i32 0, i32 3
  store i8* %39, i8** %40, align 8
  %41 = getelementptr inbounds %struct.sparc64_dump_hdr, %struct.sparc64_dump_hdr* %4, i32 0, i32 6
  %42 = load i8*, i8** %41, align 8
  %43 = call i8* @be64toh(i8* %42)
  %44 = getelementptr inbounds %struct.sparc64_dump_hdr, %struct.sparc64_dump_hdr* %4, i32 0, i32 6
  store i8* %43, i8** %44, align 8
  %45 = getelementptr inbounds %struct.sparc64_dump_hdr, %struct.sparc64_dump_hdr* %4, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = call i32 @be32toh(i32 %46)
  %48 = getelementptr inbounds %struct.sparc64_dump_hdr, %struct.sparc64_dump_hdr* %4, i32 0, i32 0
  store i32 %47, i32* %48, align 8
  %49 = getelementptr inbounds %struct.sparc64_dump_hdr, %struct.sparc64_dump_hdr* %4, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = sext i32 %50 to i64
  %52 = mul i64 %51, 88
  store i64 %52, i64* %7, align 8
  %53 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %54 = load i64, i64* %7, align 8
  %55 = call %struct.vmstate* @_kvm_malloc(%struct.TYPE_6__* %53, i64 %54)
  %56 = bitcast %struct.vmstate* %55 to %struct.sparc64_dump_reg*
  store %struct.sparc64_dump_reg* %56, %struct.sparc64_dump_reg** %5, align 8
  %57 = load %struct.sparc64_dump_reg*, %struct.sparc64_dump_reg** %5, align 8
  %58 = icmp eq %struct.sparc64_dump_reg* %57, null
  br i1 %58, label %59, label %65

59:                                               ; preds = %28
  %60 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %61 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %62 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = call i32 @_kvm_err(%struct.TYPE_6__* %60, i32 %63, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0))
  br label %162

65:                                               ; preds = %28
  %66 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %67 = load %struct.sparc64_dump_reg*, %struct.sparc64_dump_reg** %5, align 8
  %68 = bitcast %struct.sparc64_dump_reg* %67 to %struct.vmstate*
  %69 = load i64, i64* %7, align 8
  %70 = call i32 @_sparc64_read_phys(%struct.TYPE_6__* %66, i32 88, %struct.vmstate* %68, i64 %69)
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %73, label %72

72:                                               ; preds = %65
  br label %158

73:                                               ; preds = %65
  store i32 0, i32* %8, align 4
  br label %74

74:                                               ; preds = %116, %73
  %75 = load i32, i32* %8, align 4
  %76 = getelementptr inbounds %struct.sparc64_dump_hdr, %struct.sparc64_dump_hdr* %4, i32 0, i32 0
  %77 = load i32, i32* %76, align 8
  %78 = icmp slt i32 %75, %77
  br i1 %78, label %79, label %119

79:                                               ; preds = %74
  %80 = load %struct.sparc64_dump_reg*, %struct.sparc64_dump_reg** %5, align 8
  %81 = load i32, i32* %8, align 4
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds %struct.sparc64_dump_reg, %struct.sparc64_dump_reg* %80, i64 %82
  %84 = getelementptr inbounds %struct.sparc64_dump_reg, %struct.sparc64_dump_reg* %83, i32 0, i32 10
  %85 = load i8*, i8** %84, align 8
  %86 = call i8* @be64toh(i8* %85)
  %87 = load %struct.sparc64_dump_reg*, %struct.sparc64_dump_reg** %5, align 8
  %88 = load i32, i32* %8, align 4
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds %struct.sparc64_dump_reg, %struct.sparc64_dump_reg* %87, i64 %89
  %91 = getelementptr inbounds %struct.sparc64_dump_reg, %struct.sparc64_dump_reg* %90, i32 0, i32 10
  store i8* %86, i8** %91, align 8
  %92 = load %struct.sparc64_dump_reg*, %struct.sparc64_dump_reg** %5, align 8
  %93 = load i32, i32* %8, align 4
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds %struct.sparc64_dump_reg, %struct.sparc64_dump_reg* %92, i64 %94
  %96 = getelementptr inbounds %struct.sparc64_dump_reg, %struct.sparc64_dump_reg* %95, i32 0, i32 9
  %97 = load i8*, i8** %96, align 8
  %98 = call i8* @be64toh(i8* %97)
  %99 = load %struct.sparc64_dump_reg*, %struct.sparc64_dump_reg** %5, align 8
  %100 = load i32, i32* %8, align 4
  %101 = sext i32 %100 to i64
  %102 = getelementptr inbounds %struct.sparc64_dump_reg, %struct.sparc64_dump_reg* %99, i64 %101
  %103 = getelementptr inbounds %struct.sparc64_dump_reg, %struct.sparc64_dump_reg* %102, i32 0, i32 9
  store i8* %98, i8** %103, align 8
  %104 = load %struct.sparc64_dump_reg*, %struct.sparc64_dump_reg** %5, align 8
  %105 = load i32, i32* %8, align 4
  %106 = sext i32 %105 to i64
  %107 = getelementptr inbounds %struct.sparc64_dump_reg, %struct.sparc64_dump_reg* %104, i64 %106
  %108 = getelementptr inbounds %struct.sparc64_dump_reg, %struct.sparc64_dump_reg* %107, i32 0, i32 8
  %109 = load i8*, i8** %108, align 8
  %110 = call i8* @be64toh(i8* %109)
  %111 = load %struct.sparc64_dump_reg*, %struct.sparc64_dump_reg** %5, align 8
  %112 = load i32, i32* %8, align 4
  %113 = sext i32 %112 to i64
  %114 = getelementptr inbounds %struct.sparc64_dump_reg, %struct.sparc64_dump_reg* %111, i64 %113
  %115 = getelementptr inbounds %struct.sparc64_dump_reg, %struct.sparc64_dump_reg* %114, i32 0, i32 8
  store i8* %110, i8** %115, align 8
  br label %116

116:                                              ; preds = %79
  %117 = load i32, i32* %8, align 4
  %118 = add nsw i32 %117, 1
  store i32 %118, i32* %8, align 4
  br label %74

119:                                              ; preds = %74
  %120 = load %struct.sparc64_dump_reg*, %struct.sparc64_dump_reg** %5, align 8
  %121 = bitcast %struct.sparc64_dump_reg* %120 to %struct.vmstate*
  %122 = getelementptr inbounds %struct.sparc64_dump_hdr, %struct.sparc64_dump_hdr* %4, i32 0, i32 0
  %123 = load i32, i32* %122, align 8
  %124 = load i32, i32* @_sparc64_reg_cmp, align 4
  %125 = call i32 @qsort(%struct.vmstate* %121, i32 %123, i32 88, i32 %124)
  %126 = getelementptr inbounds %struct.sparc64_dump_hdr, %struct.sparc64_dump_hdr* %4, i32 0, i32 6
  %127 = load i8*, i8** %126, align 8
  %128 = load %struct.vmstate*, %struct.vmstate** %6, align 8
  %129 = getelementptr inbounds %struct.vmstate, %struct.vmstate* %128, i32 0, i32 7
  store i8* %127, i8** %129, align 8
  %130 = load %struct.sparc64_dump_reg*, %struct.sparc64_dump_reg** %5, align 8
  %131 = bitcast %struct.sparc64_dump_reg* %130 to %struct.vmstate*
  %132 = load %struct.vmstate*, %struct.vmstate** %6, align 8
  %133 = getelementptr inbounds %struct.vmstate, %struct.vmstate* %132, i32 0, i32 5
  store %struct.vmstate* %131, %struct.vmstate** %133, align 8
  %134 = getelementptr inbounds %struct.sparc64_dump_hdr, %struct.sparc64_dump_hdr* %4, i32 0, i32 0
  %135 = load i32, i32* %134, align 8
  %136 = load %struct.vmstate*, %struct.vmstate** %6, align 8
  %137 = getelementptr inbounds %struct.vmstate, %struct.vmstate* %136, i32 0, i32 1
  store i32 %135, i32* %137, align 4
  %138 = load %struct.vmstate*, %struct.vmstate** %6, align 8
  %139 = getelementptr inbounds %struct.sparc64_dump_hdr, %struct.sparc64_dump_hdr* %4, i32 0, i32 4
  %140 = load i8*, i8** %139, align 8
  %141 = getelementptr inbounds %struct.sparc64_dump_hdr, %struct.sparc64_dump_hdr* %4, i32 0, i32 3
  %142 = load i8*, i8** %141, align 8
  %143 = call i64 @_sparc64_find_off(%struct.vmstate* %138, i8* %140, i8* %142)
  %144 = load %struct.vmstate*, %struct.vmstate** %6, align 8
  %145 = getelementptr inbounds %struct.vmstate, %struct.vmstate* %144, i32 0, i32 2
  store i64 %143, i64* %145, align 8
  %146 = load %struct.vmstate*, %struct.vmstate** %6, align 8
  %147 = getelementptr inbounds %struct.vmstate, %struct.vmstate* %146, i32 0, i32 2
  %148 = load i64, i64* %147, align 8
  %149 = load i64, i64* @KVM_OFF_NOTFOUND, align 8
  %150 = icmp eq i64 %148, %149
  br i1 %150, label %151, label %157

151:                                              ; preds = %119
  %152 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %153 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %154 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %153, i32 0, i32 0
  %155 = load i32, i32* %154, align 8
  %156 = call i32 @_kvm_err(%struct.TYPE_6__* %152, i32 %155, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0))
  br label %158

157:                                              ; preds = %119
  store i32 0, i32* %2, align 4
  br label %165

158:                                              ; preds = %151, %72
  %159 = load %struct.sparc64_dump_reg*, %struct.sparc64_dump_reg** %5, align 8
  %160 = bitcast %struct.sparc64_dump_reg* %159 to %struct.vmstate*
  %161 = call i32 @free(%struct.vmstate* %160)
  br label %162

162:                                              ; preds = %158, %59, %27
  %163 = load %struct.vmstate*, %struct.vmstate** %6, align 8
  %164 = call i32 @free(%struct.vmstate* %163)
  store i32 -1, i32* %2, align 4
  br label %165

165:                                              ; preds = %162, %157, %13
  %166 = load i32, i32* %2, align 4
  ret i32 %166
}

declare dso_local %struct.vmstate* @_kvm_malloc(%struct.TYPE_6__*, i64) #1

declare dso_local i32 @_kvm_err(%struct.TYPE_6__*, i32, i8*) #1

declare dso_local i32 @_sparc64_read_phys(%struct.TYPE_6__*, i32, %struct.vmstate*, i64) #1

declare dso_local i8* @be64toh(i8*) #1

declare dso_local i32 @be32toh(i32) #1

declare dso_local i32 @qsort(%struct.vmstate*, i32, i32, i32) #1

declare dso_local i64 @_sparc64_find_off(%struct.vmstate*, i8*, i8*) #1

declare dso_local i32 @free(%struct.vmstate*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
