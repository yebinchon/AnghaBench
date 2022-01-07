; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libkvm/extr_kvm_arm.c__arm_initvtop.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libkvm/extr_kvm_arm.c__arm_initvtop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32, %struct.vmstate*, i64 }
%struct.vmstate = type { i64, i64*, %struct.TYPE_10__* }
%struct.TYPE_10__ = type { i64, i64, i64 }
%struct.kvm_nlist = type { i8*, i64 }

@.str = private unnamed_addr constant [31 x i8] c"raw dumps not supported on arm\00", align 1
@.str.1 = private unnamed_addr constant [19 x i8] c"cannot allocate vm\00", align 1
@PT_DUMP_DELTA = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [9 x i8] c"kernbase\00", align 1
@.str.3 = private unnamed_addr constant [24 x i8] c"cannot resolve kernbase\00", align 1
@.str.4 = private unnamed_addr constant [9 x i8] c"physaddr\00", align 1
@.str.5 = private unnamed_addr constant [23 x i8] c"couldn't get phys addr\00", align 1
@.str.6 = private unnamed_addr constant [12 x i8] c"kernel_l1pa\00", align 1
@.str.7 = private unnamed_addr constant [13 x i8] c"bad namelist\00", align 1
@.str.8 = private unnamed_addr constant [24 x i8] c"cannot read kernel_l1pa\00", align 1
@ARM_L1_TABLE_SIZE = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [21 x i8] c"cannot allocate l1pt\00", align 1
@.str.10 = private unnamed_addr constant [17 x i8] c"cannot read l1pt\00", align 1
@KERNBASE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_9__*)* @_arm_initvtop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @_arm_initvtop(%struct.TYPE_9__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_9__*, align 8
  %4 = alloca %struct.vmstate*, align 8
  %5 = alloca [2 x %struct.kvm_nlist], align 16
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %3, align 8
  %12 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %13 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %12, i32 0, i32 2
  %14 = load i64, i64* %13, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %22

16:                                               ; preds = %1
  %17 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %18 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %19 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = call i32 @_kvm_err(%struct.TYPE_9__* %17, i32 %20, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %2, align 4
  br label %187

22:                                               ; preds = %1
  %23 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %24 = call i8* @_kvm_malloc(%struct.TYPE_9__* %23, i32 24)
  %25 = bitcast i8* %24 to %struct.vmstate*
  store %struct.vmstate* %25, %struct.vmstate** %4, align 8
  %26 = load %struct.vmstate*, %struct.vmstate** %4, align 8
  %27 = icmp eq %struct.vmstate* %26, null
  br i1 %27, label %28, label %34

28:                                               ; preds = %22
  %29 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %30 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %31 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = call i32 @_kvm_err(%struct.TYPE_9__* %29, i32 %32, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0))
  store i32 -1, i32* %2, align 4
  br label %187

34:                                               ; preds = %22
  %35 = load %struct.vmstate*, %struct.vmstate** %4, align 8
  %36 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %37 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %36, i32 0, i32 1
  store %struct.vmstate* %35, %struct.vmstate** %37, align 8
  %38 = load %struct.vmstate*, %struct.vmstate** %4, align 8
  %39 = getelementptr inbounds %struct.vmstate, %struct.vmstate* %38, i32 0, i32 1
  store i64* null, i64** %39, align 8
  %40 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %41 = load %struct.vmstate*, %struct.vmstate** %4, align 8
  %42 = getelementptr inbounds %struct.vmstate, %struct.vmstate* %41, i32 0, i32 0
  %43 = load %struct.vmstate*, %struct.vmstate** %4, align 8
  %44 = getelementptr inbounds %struct.vmstate, %struct.vmstate* %43, i32 0, i32 2
  %45 = call i32 @_kvm_read_core_phdrs(%struct.TYPE_9__* %40, i64* %42, %struct.TYPE_10__** %44)
  %46 = icmp eq i32 %45, -1
  br i1 %46, label %47, label %48

47:                                               ; preds = %34
  store i32 -1, i32* %2, align 4
  br label %187

48:                                               ; preds = %34
  store i32 0, i32* %11, align 4
  store i64 0, i64* %10, align 8
  br label %49

49:                                               ; preds = %81, %48
  %50 = load i64, i64* %10, align 8
  %51 = load %struct.vmstate*, %struct.vmstate** %4, align 8
  %52 = getelementptr inbounds %struct.vmstate, %struct.vmstate* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = icmp ult i64 %50, %53
  br i1 %54, label %55, label %84

55:                                               ; preds = %49
  %56 = load %struct.vmstate*, %struct.vmstate** %4, align 8
  %57 = getelementptr inbounds %struct.vmstate, %struct.vmstate* %56, i32 0, i32 2
  %58 = load %struct.TYPE_10__*, %struct.TYPE_10__** %57, align 8
  %59 = load i64, i64* %10, align 8
  %60 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %58, i64 %59
  %61 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = load i64, i64* @PT_DUMP_DELTA, align 8
  %64 = icmp eq i64 %62, %63
  br i1 %64, label %65, label %80

65:                                               ; preds = %55
  %66 = load %struct.vmstate*, %struct.vmstate** %4, align 8
  %67 = getelementptr inbounds %struct.vmstate, %struct.vmstate* %66, i32 0, i32 2
  %68 = load %struct.TYPE_10__*, %struct.TYPE_10__** %67, align 8
  %69 = load i64, i64* %10, align 8
  %70 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %68, i64 %69
  %71 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %70, i32 0, i32 2
  %72 = load i64, i64* %71, align 8
  store i64 %72, i64* %6, align 8
  %73 = load %struct.vmstate*, %struct.vmstate** %4, align 8
  %74 = getelementptr inbounds %struct.vmstate, %struct.vmstate* %73, i32 0, i32 2
  %75 = load %struct.TYPE_10__*, %struct.TYPE_10__** %74, align 8
  %76 = load i64, i64* %10, align 8
  %77 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %75, i64 %76
  %78 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %77, i32 0, i32 1
  %79 = load i64, i64* %78, align 8
  store i64 %79, i64* %7, align 8
  store i32 1, i32* %11, align 4
  br label %84

80:                                               ; preds = %55
  br label %81

81:                                               ; preds = %80
  %82 = load i64, i64* %10, align 8
  %83 = add i64 %82, 1
  store i64 %83, i64* %10, align 8
  br label %49

84:                                               ; preds = %65, %49
  %85 = getelementptr inbounds [2 x %struct.kvm_nlist], [2 x %struct.kvm_nlist]* %5, i64 0, i64 1
  %86 = getelementptr inbounds %struct.kvm_nlist, %struct.kvm_nlist* %85, i32 0, i32 0
  store i8* null, i8** %86, align 16
  %87 = load i32, i32* %11, align 4
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %123, label %89

89:                                               ; preds = %84
  %90 = getelementptr inbounds [2 x %struct.kvm_nlist], [2 x %struct.kvm_nlist]* %5, i64 0, i64 0
  %91 = getelementptr inbounds %struct.kvm_nlist, %struct.kvm_nlist* %90, i32 0, i32 0
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0), i8** %91, align 16
  %92 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %93 = getelementptr inbounds [2 x %struct.kvm_nlist], [2 x %struct.kvm_nlist]* %5, i64 0, i64 0
  %94 = call i64 @kvm_nlist2(%struct.TYPE_9__* %92, %struct.kvm_nlist* %93)
  %95 = icmp ne i64 %94, 0
  br i1 %95, label %96, label %102

96:                                               ; preds = %89
  %97 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %98 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %99 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 8
  %101 = call i32 @_kvm_err(%struct.TYPE_9__* %97, i32 %100, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.3, i64 0, i64 0))
  store i32 -1, i32* %2, align 4
  br label %187

102:                                              ; preds = %89
  %103 = getelementptr inbounds [2 x %struct.kvm_nlist], [2 x %struct.kvm_nlist]* %5, i64 0, i64 0
  %104 = getelementptr inbounds %struct.kvm_nlist, %struct.kvm_nlist* %103, i32 0, i32 1
  %105 = load i64, i64* %104, align 8
  store i64 %105, i64* %6, align 8
  br label %106

106:                                              ; preds = %102
  %107 = getelementptr inbounds [2 x %struct.kvm_nlist], [2 x %struct.kvm_nlist]* %5, i64 0, i64 0
  %108 = getelementptr inbounds %struct.kvm_nlist, %struct.kvm_nlist* %107, i32 0, i32 0
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i64 0, i64 0), i8** %108, align 16
  %109 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %110 = getelementptr inbounds [2 x %struct.kvm_nlist], [2 x %struct.kvm_nlist]* %5, i64 0, i64 0
  %111 = call i64 @kvm_nlist2(%struct.TYPE_9__* %109, %struct.kvm_nlist* %110)
  %112 = icmp ne i64 %111, 0
  br i1 %112, label %113, label %119

113:                                              ; preds = %106
  %114 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %115 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %116 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %115, i32 0, i32 0
  %117 = load i32, i32* %116, align 8
  %118 = call i32 @_kvm_err(%struct.TYPE_9__* %114, i32 %117, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.5, i64 0, i64 0))
  store i32 -1, i32* %2, align 4
  br label %187

119:                                              ; preds = %106
  %120 = getelementptr inbounds [2 x %struct.kvm_nlist], [2 x %struct.kvm_nlist]* %5, i64 0, i64 0
  %121 = getelementptr inbounds %struct.kvm_nlist, %struct.kvm_nlist* %120, i32 0, i32 1
  %122 = load i64, i64* %121, align 8
  store i64 %122, i64* %7, align 8
  br label %123

123:                                              ; preds = %119, %84
  %124 = getelementptr inbounds [2 x %struct.kvm_nlist], [2 x %struct.kvm_nlist]* %5, i64 0, i64 0
  %125 = getelementptr inbounds %struct.kvm_nlist, %struct.kvm_nlist* %124, i32 0, i32 0
  store i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.6, i64 0, i64 0), i8** %125, align 16
  %126 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %127 = getelementptr inbounds [2 x %struct.kvm_nlist], [2 x %struct.kvm_nlist]* %5, i64 0, i64 0
  %128 = call i64 @kvm_nlist2(%struct.TYPE_9__* %126, %struct.kvm_nlist* %127)
  %129 = icmp ne i64 %128, 0
  br i1 %129, label %130, label %136

130:                                              ; preds = %123
  %131 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %132 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %133 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %132, i32 0, i32 0
  %134 = load i32, i32* %133, align 8
  %135 = call i32 @_kvm_err(%struct.TYPE_9__* %131, i32 %134, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.7, i64 0, i64 0))
  store i32 -1, i32* %2, align 4
  br label %187

136:                                              ; preds = %123
  %137 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %138 = getelementptr inbounds [2 x %struct.kvm_nlist], [2 x %struct.kvm_nlist]* %5, i64 0, i64 0
  %139 = getelementptr inbounds %struct.kvm_nlist, %struct.kvm_nlist* %138, i32 0, i32 1
  %140 = load i64, i64* %139, align 8
  %141 = load i64, i64* %6, align 8
  %142 = sub nsw i64 %140, %141
  %143 = load i64, i64* %7, align 8
  %144 = add nsw i64 %142, %143
  %145 = call i32 @kvm_read2(%struct.TYPE_9__* %137, i64 %144, i64* %8, i32 8)
  %146 = sext i32 %145 to i64
  %147 = icmp ne i64 %146, 8
  br i1 %147, label %148, label %154

148:                                              ; preds = %136
  %149 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %150 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %151 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %150, i32 0, i32 0
  %152 = load i32, i32* %151, align 8
  %153 = call i32 @_kvm_err(%struct.TYPE_9__* %149, i32 %152, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.8, i64 0, i64 0))
  store i32 -1, i32* %2, align 4
  br label %187

154:                                              ; preds = %136
  %155 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %156 = load i32, i32* @ARM_L1_TABLE_SIZE, align 4
  %157 = call i8* @_kvm_malloc(%struct.TYPE_9__* %155, i32 %156)
  %158 = bitcast i8* %157 to i64*
  store i64* %158, i64** %9, align 8
  %159 = load i64*, i64** %9, align 8
  %160 = icmp eq i64* %159, null
  br i1 %160, label %161, label %167

161:                                              ; preds = %154
  %162 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %163 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %164 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %163, i32 0, i32 0
  %165 = load i32, i32* %164, align 8
  %166 = call i32 @_kvm_err(%struct.TYPE_9__* %162, i32 %165, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.9, i64 0, i64 0))
  store i32 -1, i32* %2, align 4
  br label %187

167:                                              ; preds = %154
  %168 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %169 = load i64, i64* %8, align 8
  %170 = load i64*, i64** %9, align 8
  %171 = load i32, i32* @ARM_L1_TABLE_SIZE, align 4
  %172 = call i32 @kvm_read2(%struct.TYPE_9__* %168, i64 %169, i64* %170, i32 %171)
  %173 = load i32, i32* @ARM_L1_TABLE_SIZE, align 4
  %174 = icmp ne i32 %172, %173
  br i1 %174, label %175, label %183

175:                                              ; preds = %167
  %176 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %177 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %178 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %177, i32 0, i32 0
  %179 = load i32, i32* %178, align 8
  %180 = call i32 @_kvm_err(%struct.TYPE_9__* %176, i32 %179, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.10, i64 0, i64 0))
  %181 = load i64*, i64** %9, align 8
  %182 = call i32 @free(i64* %181)
  store i32 -1, i32* %2, align 4
  br label %187

183:                                              ; preds = %167
  %184 = load i64*, i64** %9, align 8
  %185 = load %struct.vmstate*, %struct.vmstate** %4, align 8
  %186 = getelementptr inbounds %struct.vmstate, %struct.vmstate* %185, i32 0, i32 1
  store i64* %184, i64** %186, align 8
  store i32 0, i32* %2, align 4
  br label %187

187:                                              ; preds = %183, %175, %161, %148, %130, %113, %96, %47, %28, %16
  %188 = load i32, i32* %2, align 4
  ret i32 %188
}

declare dso_local i32 @_kvm_err(%struct.TYPE_9__*, i32, i8*) #1

declare dso_local i8* @_kvm_malloc(%struct.TYPE_9__*, i32) #1

declare dso_local i32 @_kvm_read_core_phdrs(%struct.TYPE_9__*, i64*, %struct.TYPE_10__**) #1

declare dso_local i64 @kvm_nlist2(%struct.TYPE_9__*, %struct.kvm_nlist*) #1

declare dso_local i32 @kvm_read2(%struct.TYPE_9__*, i64, i64*, i32) #1

declare dso_local i32 @free(i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
