; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libkvm/extr_kvm_minidump_arm.c__arm_minidump_initvtop.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libkvm/extr_kvm_minidump_arm.c__arm_minidump_initvtop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32, i32, %struct.vmstate* }
%struct.vmstate = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i64, i64, i64, i64, i64, i64, i64, i32 }

@.str = private unnamed_addr constant [19 x i8] c"cannot allocate vm\00", align 1
@.str.1 = private unnamed_addr constant [24 x i8] c"cannot read dump header\00", align 1
@MINIDUMP_MAGIC = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [33 x i8] c"not a minidump for this platform\00", align 1
@MINIDUMP_VERSION = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [43 x i8] c"wrong minidump version. Expected %d got %d\00", align 1
@MINIDUMP_MMU_FORMAT_UNKNOWN = common dso_local global i64 0, align 8
@MINIDUMP_MMU_FORMAT_V6 = common dso_local global i64 0, align 8
@ARM_PAGE_SIZE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_9__*)* @_arm_minidump_initvtop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @_arm_minidump_initvtop(%struct.TYPE_9__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_9__*, align 8
  %4 = alloca %struct.vmstate*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %3, align 8
  %7 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %8 = call %struct.vmstate* @_kvm_malloc(%struct.TYPE_9__* %7, i32 64)
  store %struct.vmstate* %8, %struct.vmstate** %4, align 8
  %9 = load %struct.vmstate*, %struct.vmstate** %4, align 8
  %10 = icmp eq %struct.vmstate* %9, null
  br i1 %10, label %11, label %17

11:                                               ; preds = %1
  %12 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %13 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %14 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = call i32 (%struct.TYPE_9__*, i32, i8*, ...) @_kvm_err(%struct.TYPE_9__* %12, i32 %15, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %2, align 4
  br label %206

17:                                               ; preds = %1
  %18 = load %struct.vmstate*, %struct.vmstate** %4, align 8
  %19 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %20 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %19, i32 0, i32 2
  store %struct.vmstate* %18, %struct.vmstate** %20, align 8
  %21 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %22 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.vmstate*, %struct.vmstate** %4, align 8
  %25 = getelementptr inbounds %struct.vmstate, %struct.vmstate* %24, i32 0, i32 0
  %26 = call i32 @pread(i32 %23, %struct.TYPE_10__* %25, i32 64, i32 0)
  %27 = sext i32 %26 to i64
  %28 = icmp ne i64 %27, 64
  br i1 %28, label %29, label %35

29:                                               ; preds = %17
  %30 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %31 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %32 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = call i32 (%struct.TYPE_9__*, i32, i8*, ...) @_kvm_err(%struct.TYPE_9__* %30, i32 %33, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0))
  store i32 -1, i32* %2, align 4
  br label %206

35:                                               ; preds = %17
  %36 = load i32, i32* @MINIDUMP_MAGIC, align 4
  %37 = load %struct.vmstate*, %struct.vmstate** %4, align 8
  %38 = getelementptr inbounds %struct.vmstate, %struct.vmstate* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %38, i32 0, i32 7
  %40 = load i32, i32* %39, align 8
  %41 = call i64 @strncmp(i32 %36, i32 %40, i32 4)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %49

43:                                               ; preds = %35
  %44 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %45 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %46 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = call i32 (%struct.TYPE_9__*, i32, i8*, ...) @_kvm_err(%struct.TYPE_9__* %44, i32 %47, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2, i64 0, i64 0))
  store i32 -1, i32* %2, align 4
  br label %206

49:                                               ; preds = %35
  %50 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %51 = load %struct.vmstate*, %struct.vmstate** %4, align 8
  %52 = getelementptr inbounds %struct.vmstate, %struct.vmstate* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = call i8* @_kvm32toh(%struct.TYPE_9__* %50, i64 %54)
  %56 = ptrtoint i8* %55 to i64
  %57 = load %struct.vmstate*, %struct.vmstate** %4, align 8
  %58 = getelementptr inbounds %struct.vmstate, %struct.vmstate* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %58, i32 0, i32 0
  store i64 %56, i64* %59, align 8
  %60 = load %struct.vmstate*, %struct.vmstate** %4, align 8
  %61 = getelementptr inbounds %struct.vmstate, %struct.vmstate* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = load i64, i64* @MINIDUMP_VERSION, align 8
  %65 = icmp ne i64 %63, %64
  br i1 %65, label %66, label %77

66:                                               ; preds = %49
  %67 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %68 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %69 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = load i64, i64* @MINIDUMP_VERSION, align 8
  %72 = load %struct.vmstate*, %struct.vmstate** %4, align 8
  %73 = getelementptr inbounds %struct.vmstate, %struct.vmstate* %72, i32 0, i32 0
  %74 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %73, i32 0, i32 0
  %75 = load i64, i64* %74, align 8
  %76 = call i32 (%struct.TYPE_9__*, i32, i8*, ...) @_kvm_err(%struct.TYPE_9__* %67, i32 %70, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.3, i64 0, i64 0), i64 %71, i64 %75)
  store i32 -1, i32* %2, align 4
  br label %206

77:                                               ; preds = %49
  %78 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %79 = load %struct.vmstate*, %struct.vmstate** %4, align 8
  %80 = getelementptr inbounds %struct.vmstate, %struct.vmstate* %79, i32 0, i32 0
  %81 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %80, i32 0, i32 1
  %82 = load i64, i64* %81, align 8
  %83 = call i8* @_kvm32toh(%struct.TYPE_9__* %78, i64 %82)
  %84 = ptrtoint i8* %83 to i64
  %85 = load %struct.vmstate*, %struct.vmstate** %4, align 8
  %86 = getelementptr inbounds %struct.vmstate, %struct.vmstate* %85, i32 0, i32 0
  %87 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %86, i32 0, i32 1
  store i64 %84, i64* %87, align 8
  %88 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %89 = load %struct.vmstate*, %struct.vmstate** %4, align 8
  %90 = getelementptr inbounds %struct.vmstate, %struct.vmstate* %89, i32 0, i32 0
  %91 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %90, i32 0, i32 2
  %92 = load i64, i64* %91, align 8
  %93 = call i8* @_kvm32toh(%struct.TYPE_9__* %88, i64 %92)
  %94 = ptrtoint i8* %93 to i64
  %95 = load %struct.vmstate*, %struct.vmstate** %4, align 8
  %96 = getelementptr inbounds %struct.vmstate, %struct.vmstate* %95, i32 0, i32 0
  %97 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %96, i32 0, i32 2
  store i64 %94, i64* %97, align 8
  %98 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %99 = load %struct.vmstate*, %struct.vmstate** %4, align 8
  %100 = getelementptr inbounds %struct.vmstate, %struct.vmstate* %99, i32 0, i32 0
  %101 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %100, i32 0, i32 3
  %102 = load i64, i64* %101, align 8
  %103 = call i8* @_kvm32toh(%struct.TYPE_9__* %98, i64 %102)
  %104 = ptrtoint i8* %103 to i64
  %105 = load %struct.vmstate*, %struct.vmstate** %4, align 8
  %106 = getelementptr inbounds %struct.vmstate, %struct.vmstate* %105, i32 0, i32 0
  %107 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %106, i32 0, i32 3
  store i64 %104, i64* %107, align 8
  %108 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %109 = load %struct.vmstate*, %struct.vmstate** %4, align 8
  %110 = getelementptr inbounds %struct.vmstate, %struct.vmstate* %109, i32 0, i32 0
  %111 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %110, i32 0, i32 4
  %112 = load i64, i64* %111, align 8
  %113 = call i8* @_kvm32toh(%struct.TYPE_9__* %108, i64 %112)
  %114 = ptrtoint i8* %113 to i64
  %115 = load %struct.vmstate*, %struct.vmstate** %4, align 8
  %116 = getelementptr inbounds %struct.vmstate, %struct.vmstate* %115, i32 0, i32 0
  %117 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %116, i32 0, i32 4
  store i64 %114, i64* %117, align 8
  %118 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %119 = load %struct.vmstate*, %struct.vmstate** %4, align 8
  %120 = getelementptr inbounds %struct.vmstate, %struct.vmstate* %119, i32 0, i32 0
  %121 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %120, i32 0, i32 5
  %122 = load i64, i64* %121, align 8
  %123 = call i8* @_kvm32toh(%struct.TYPE_9__* %118, i64 %122)
  %124 = ptrtoint i8* %123 to i64
  %125 = load %struct.vmstate*, %struct.vmstate** %4, align 8
  %126 = getelementptr inbounds %struct.vmstate, %struct.vmstate* %125, i32 0, i32 0
  %127 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %126, i32 0, i32 5
  store i64 %124, i64* %127, align 8
  %128 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %129 = load %struct.vmstate*, %struct.vmstate** %4, align 8
  %130 = getelementptr inbounds %struct.vmstate, %struct.vmstate* %129, i32 0, i32 0
  %131 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %130, i32 0, i32 6
  %132 = load i64, i64* %131, align 8
  %133 = call i8* @_kvm32toh(%struct.TYPE_9__* %128, i64 %132)
  %134 = ptrtoint i8* %133 to i64
  %135 = load %struct.vmstate*, %struct.vmstate** %4, align 8
  %136 = getelementptr inbounds %struct.vmstate, %struct.vmstate* %135, i32 0, i32 0
  %137 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %136, i32 0, i32 6
  store i64 %134, i64* %137, align 8
  %138 = load %struct.vmstate*, %struct.vmstate** %4, align 8
  %139 = getelementptr inbounds %struct.vmstate, %struct.vmstate* %138, i32 0, i32 0
  %140 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %139, i32 0, i32 6
  %141 = load i64, i64* %140, align 8
  %142 = load i64, i64* @MINIDUMP_MMU_FORMAT_UNKNOWN, align 8
  %143 = icmp eq i64 %141, %142
  br i1 %143, label %144, label %149

144:                                              ; preds = %77
  %145 = load i64, i64* @MINIDUMP_MMU_FORMAT_V6, align 8
  %146 = load %struct.vmstate*, %struct.vmstate** %4, align 8
  %147 = getelementptr inbounds %struct.vmstate, %struct.vmstate* %146, i32 0, i32 0
  %148 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %147, i32 0, i32 6
  store i64 %145, i64* %148, align 8
  br label %149

149:                                              ; preds = %144, %77
  %150 = load i64, i64* @ARM_PAGE_SIZE, align 8
  %151 = load %struct.vmstate*, %struct.vmstate** %4, align 8
  %152 = getelementptr inbounds %struct.vmstate, %struct.vmstate* %151, i32 0, i32 0
  %153 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %152, i32 0, i32 1
  %154 = load i64, i64* %153, align 8
  %155 = call i64 @arm_round_page(i64 %154)
  %156 = add nsw i64 %150, %155
  store i64 %156, i64* %5, align 8
  %157 = load i64, i64* %5, align 8
  %158 = load %struct.vmstate*, %struct.vmstate** %4, align 8
  %159 = getelementptr inbounds %struct.vmstate, %struct.vmstate* %158, i32 0, i32 0
  %160 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %159, i32 0, i32 2
  %161 = load i64, i64* %160, align 8
  %162 = call i64 @arm_round_page(i64 %161)
  %163 = add nsw i64 %157, %162
  %164 = load %struct.vmstate*, %struct.vmstate** %4, align 8
  %165 = getelementptr inbounds %struct.vmstate, %struct.vmstate* %164, i32 0, i32 0
  %166 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %165, i32 0, i32 3
  %167 = load i64, i64* %166, align 8
  %168 = call i64 @arm_round_page(i64 %167)
  %169 = add nsw i64 %163, %168
  store i64 %169, i64* %6, align 8
  %170 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %171 = load %struct.vmstate*, %struct.vmstate** %4, align 8
  %172 = getelementptr inbounds %struct.vmstate, %struct.vmstate* %171, i32 0, i32 0
  %173 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %172, i32 0, i32 2
  %174 = load i64, i64* %173, align 8
  %175 = load i64, i64* %5, align 8
  %176 = load i64, i64* %6, align 8
  %177 = load i64, i64* @ARM_PAGE_SIZE, align 8
  %178 = call i32 @_kvm_pt_init(%struct.TYPE_9__* %170, i64 %174, i64 %175, i64 %176, i64 %177, i32 4)
  %179 = icmp eq i32 %178, -1
  br i1 %179, label %180, label %181

180:                                              ; preds = %149
  store i32 -1, i32* %2, align 4
  br label %206

181:                                              ; preds = %149
  %182 = load %struct.vmstate*, %struct.vmstate** %4, align 8
  %183 = getelementptr inbounds %struct.vmstate, %struct.vmstate* %182, i32 0, i32 0
  %184 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %183, i32 0, i32 2
  %185 = load i64, i64* %184, align 8
  %186 = call i64 @arm_round_page(i64 %185)
  %187 = load i64, i64* %5, align 8
  %188 = add nsw i64 %187, %186
  store i64 %188, i64* %5, align 8
  %189 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %190 = load %struct.vmstate*, %struct.vmstate** %4, align 8
  %191 = getelementptr inbounds %struct.vmstate, %struct.vmstate* %190, i32 0, i32 0
  %192 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %191, i32 0, i32 3
  %193 = load i64, i64* %192, align 8
  %194 = load i64, i64* %5, align 8
  %195 = call i32 @_kvm_pmap_init(%struct.TYPE_9__* %189, i64 %193, i64 %194)
  %196 = icmp eq i32 %195, -1
  br i1 %196, label %197, label %198

197:                                              ; preds = %181
  store i32 -1, i32* %2, align 4
  br label %206

198:                                              ; preds = %181
  %199 = load %struct.vmstate*, %struct.vmstate** %4, align 8
  %200 = getelementptr inbounds %struct.vmstate, %struct.vmstate* %199, i32 0, i32 0
  %201 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %200, i32 0, i32 3
  %202 = load i64, i64* %201, align 8
  %203 = call i64 @arm_round_page(i64 %202)
  %204 = load i64, i64* %5, align 8
  %205 = add nsw i64 %204, %203
  store i64 %205, i64* %5, align 8
  store i32 0, i32* %2, align 4
  br label %206

206:                                              ; preds = %198, %197, %180, %66, %43, %29, %11
  %207 = load i32, i32* %2, align 4
  ret i32 %207
}

declare dso_local %struct.vmstate* @_kvm_malloc(%struct.TYPE_9__*, i32) #1

declare dso_local i32 @_kvm_err(%struct.TYPE_9__*, i32, i8*, ...) #1

declare dso_local i32 @pread(i32, %struct.TYPE_10__*, i32, i32) #1

declare dso_local i64 @strncmp(i32, i32, i32) #1

declare dso_local i8* @_kvm32toh(%struct.TYPE_9__*, i64) #1

declare dso_local i64 @arm_round_page(i64) #1

declare dso_local i32 @_kvm_pt_init(%struct.TYPE_9__*, i64, i64, i64, i64, i32) #1

declare dso_local i32 @_kvm_pmap_init(%struct.TYPE_9__*, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
