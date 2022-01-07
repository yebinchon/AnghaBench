; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libkvm/extr_kvm_minidump_mips.c__mips_minidump_initvtop.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libkvm/extr_kvm_minidump_mips.c__mips_minidump_initvtop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i32, i32, %struct.TYPE_11__, %struct.vmstate* }
%struct.TYPE_11__ = type { i64*, i32 }
%struct.vmstate = type { i32, %struct.TYPE_13__ }
%struct.TYPE_13__ = type { i64, i64, i64, i64, i8*, i8*, i8*, i32 }

@.str = private unnamed_addr constant [19 x i8] c"cannot allocate vm\00", align 1
@EI_CLASS = common dso_local global i64 0, align 8
@ELFCLASS64 = common dso_local global i64 0, align 8
@EF_MIPS_ABI2 = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [24 x i8] c"cannot read dump header\00", align 1
@MINIDUMP_MAGIC = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [33 x i8] c"not a minidump for this platform\00", align 1
@MINIDUMP_VERSION = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [43 x i8] c"wrong minidump version. Expected %d got %d\00", align 1
@MIPS_PAGE_SIZE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_12__*)* @_mips_minidump_initvtop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @_mips_minidump_initvtop(%struct.TYPE_12__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_12__*, align 8
  %4 = alloca %struct.vmstate*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  store %struct.TYPE_12__* %0, %struct.TYPE_12__** %3, align 8
  %7 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %8 = call %struct.vmstate* @_kvm_malloc(%struct.TYPE_12__* %7, i32 72)
  store %struct.vmstate* %8, %struct.vmstate** %4, align 8
  %9 = load %struct.vmstate*, %struct.vmstate** %4, align 8
  %10 = icmp eq %struct.vmstate* %9, null
  br i1 %10, label %11, label %17

11:                                               ; preds = %1
  %12 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %13 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %14 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = call i32 (%struct.TYPE_12__*, i32, i8*, ...) @_kvm_err(%struct.TYPE_12__* %12, i32 %15, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %2, align 4
  br label %215

17:                                               ; preds = %1
  %18 = load %struct.vmstate*, %struct.vmstate** %4, align 8
  %19 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %20 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %19, i32 0, i32 3
  store %struct.vmstate* %18, %struct.vmstate** %20, align 8
  %21 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %22 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %21, i32 0, i32 2
  %23 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %22, i32 0, i32 0
  %24 = load i64*, i64** %23, align 8
  %25 = load i64, i64* @EI_CLASS, align 8
  %26 = getelementptr inbounds i64, i64* %24, i64 %25
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* @ELFCLASS64, align 8
  %29 = icmp eq i64 %27, %28
  br i1 %29, label %38, label %30

30:                                               ; preds = %17
  %31 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %32 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %31, i32 0, i32 2
  %33 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 8
  %35 = load i32, i32* @EF_MIPS_ABI2, align 4
  %36 = and i32 %34, %35
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %41

38:                                               ; preds = %30, %17
  %39 = load %struct.vmstate*, %struct.vmstate** %4, align 8
  %40 = getelementptr inbounds %struct.vmstate, %struct.vmstate* %39, i32 0, i32 0
  store i32 64, i32* %40, align 8
  br label %44

41:                                               ; preds = %30
  %42 = load %struct.vmstate*, %struct.vmstate** %4, align 8
  %43 = getelementptr inbounds %struct.vmstate, %struct.vmstate* %42, i32 0, i32 0
  store i32 32, i32* %43, align 8
  br label %44

44:                                               ; preds = %41, %38
  %45 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %46 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = load %struct.vmstate*, %struct.vmstate** %4, align 8
  %49 = getelementptr inbounds %struct.vmstate, %struct.vmstate* %48, i32 0, i32 1
  %50 = call i32 @pread(i32 %47, %struct.TYPE_13__* %49, i32 64, i32 0)
  %51 = sext i32 %50 to i64
  %52 = icmp ne i64 %51, 64
  br i1 %52, label %53, label %59

53:                                               ; preds = %44
  %54 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %55 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %56 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = call i32 (%struct.TYPE_12__*, i32, i8*, ...) @_kvm_err(%struct.TYPE_12__* %54, i32 %57, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0))
  store i32 -1, i32* %2, align 4
  br label %215

59:                                               ; preds = %44
  %60 = load i32, i32* @MINIDUMP_MAGIC, align 4
  %61 = load %struct.vmstate*, %struct.vmstate** %4, align 8
  %62 = getelementptr inbounds %struct.vmstate, %struct.vmstate* %61, i32 0, i32 1
  %63 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %62, i32 0, i32 7
  %64 = load i32, i32* %63, align 8
  %65 = call i64 @strncmp(i32 %60, i32 %64, i32 4)
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %73

67:                                               ; preds = %59
  %68 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %69 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %70 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 8
  %72 = call i32 (%struct.TYPE_12__*, i32, i8*, ...) @_kvm_err(%struct.TYPE_12__* %68, i32 %71, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2, i64 0, i64 0))
  store i32 -1, i32* %2, align 4
  br label %215

73:                                               ; preds = %59
  %74 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %75 = load %struct.vmstate*, %struct.vmstate** %4, align 8
  %76 = getelementptr inbounds %struct.vmstate, %struct.vmstate* %75, i32 0, i32 1
  %77 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %76, i32 0, i32 0
  %78 = load i64, i64* %77, align 8
  %79 = call i8* @_kvm32toh(%struct.TYPE_12__* %74, i64 %78)
  %80 = ptrtoint i8* %79 to i64
  %81 = load %struct.vmstate*, %struct.vmstate** %4, align 8
  %82 = getelementptr inbounds %struct.vmstate, %struct.vmstate* %81, i32 0, i32 1
  %83 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %82, i32 0, i32 0
  store i64 %80, i64* %83, align 8
  %84 = load %struct.vmstate*, %struct.vmstate** %4, align 8
  %85 = getelementptr inbounds %struct.vmstate, %struct.vmstate* %84, i32 0, i32 1
  %86 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %85, i32 0, i32 0
  %87 = load i64, i64* %86, align 8
  %88 = load i64, i64* @MINIDUMP_VERSION, align 8
  %89 = icmp ne i64 %87, %88
  br i1 %89, label %90, label %101

90:                                               ; preds = %73
  %91 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %92 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %93 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 8
  %95 = load i64, i64* @MINIDUMP_VERSION, align 8
  %96 = load %struct.vmstate*, %struct.vmstate** %4, align 8
  %97 = getelementptr inbounds %struct.vmstate, %struct.vmstate* %96, i32 0, i32 1
  %98 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %97, i32 0, i32 0
  %99 = load i64, i64* %98, align 8
  %100 = call i32 (%struct.TYPE_12__*, i32, i8*, ...) @_kvm_err(%struct.TYPE_12__* %91, i32 %94, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.3, i64 0, i64 0), i64 %95, i64 %99)
  store i32 -1, i32* %2, align 4
  br label %215

101:                                              ; preds = %73
  %102 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %103 = load %struct.vmstate*, %struct.vmstate** %4, align 8
  %104 = getelementptr inbounds %struct.vmstate, %struct.vmstate* %103, i32 0, i32 1
  %105 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %104, i32 0, i32 1
  %106 = load i64, i64* %105, align 8
  %107 = call i8* @_kvm32toh(%struct.TYPE_12__* %102, i64 %106)
  %108 = ptrtoint i8* %107 to i64
  %109 = load %struct.vmstate*, %struct.vmstate** %4, align 8
  %110 = getelementptr inbounds %struct.vmstate, %struct.vmstate* %109, i32 0, i32 1
  %111 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %110, i32 0, i32 1
  store i64 %108, i64* %111, align 8
  %112 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %113 = load %struct.vmstate*, %struct.vmstate** %4, align 8
  %114 = getelementptr inbounds %struct.vmstate, %struct.vmstate* %113, i32 0, i32 1
  %115 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %114, i32 0, i32 2
  %116 = load i64, i64* %115, align 8
  %117 = call i8* @_kvm32toh(%struct.TYPE_12__* %112, i64 %116)
  %118 = ptrtoint i8* %117 to i64
  %119 = load %struct.vmstate*, %struct.vmstate** %4, align 8
  %120 = getelementptr inbounds %struct.vmstate, %struct.vmstate* %119, i32 0, i32 1
  %121 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %120, i32 0, i32 2
  store i64 %118, i64* %121, align 8
  %122 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %123 = load %struct.vmstate*, %struct.vmstate** %4, align 8
  %124 = getelementptr inbounds %struct.vmstate, %struct.vmstate* %123, i32 0, i32 1
  %125 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %124, i32 0, i32 3
  %126 = load i64, i64* %125, align 8
  %127 = call i8* @_kvm32toh(%struct.TYPE_12__* %122, i64 %126)
  %128 = ptrtoint i8* %127 to i64
  %129 = load %struct.vmstate*, %struct.vmstate** %4, align 8
  %130 = getelementptr inbounds %struct.vmstate, %struct.vmstate* %129, i32 0, i32 1
  %131 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %130, i32 0, i32 3
  store i64 %128, i64* %131, align 8
  %132 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %133 = load %struct.vmstate*, %struct.vmstate** %4, align 8
  %134 = getelementptr inbounds %struct.vmstate, %struct.vmstate* %133, i32 0, i32 1
  %135 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %134, i32 0, i32 6
  %136 = load i8*, i8** %135, align 8
  %137 = call i8* @_kvm64toh(%struct.TYPE_12__* %132, i8* %136)
  %138 = load %struct.vmstate*, %struct.vmstate** %4, align 8
  %139 = getelementptr inbounds %struct.vmstate, %struct.vmstate* %138, i32 0, i32 1
  %140 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %139, i32 0, i32 6
  store i8* %137, i8** %140, align 8
  %141 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %142 = load %struct.vmstate*, %struct.vmstate** %4, align 8
  %143 = getelementptr inbounds %struct.vmstate, %struct.vmstate* %142, i32 0, i32 1
  %144 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %143, i32 0, i32 5
  %145 = load i8*, i8** %144, align 8
  %146 = call i8* @_kvm64toh(%struct.TYPE_12__* %141, i8* %145)
  %147 = load %struct.vmstate*, %struct.vmstate** %4, align 8
  %148 = getelementptr inbounds %struct.vmstate, %struct.vmstate* %147, i32 0, i32 1
  %149 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %148, i32 0, i32 5
  store i8* %146, i8** %149, align 8
  %150 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %151 = load %struct.vmstate*, %struct.vmstate** %4, align 8
  %152 = getelementptr inbounds %struct.vmstate, %struct.vmstate* %151, i32 0, i32 1
  %153 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %152, i32 0, i32 4
  %154 = load i8*, i8** %153, align 8
  %155 = call i8* @_kvm64toh(%struct.TYPE_12__* %150, i8* %154)
  %156 = load %struct.vmstate*, %struct.vmstate** %4, align 8
  %157 = getelementptr inbounds %struct.vmstate, %struct.vmstate* %156, i32 0, i32 1
  %158 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %157, i32 0, i32 4
  store i8* %155, i8** %158, align 8
  %159 = load i64, i64* @MIPS_PAGE_SIZE, align 8
  %160 = load %struct.vmstate*, %struct.vmstate** %4, align 8
  %161 = getelementptr inbounds %struct.vmstate, %struct.vmstate* %160, i32 0, i32 1
  %162 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %161, i32 0, i32 1
  %163 = load i64, i64* %162, align 8
  %164 = call i64 @mips_round_page(i64 %163)
  %165 = add nsw i64 %159, %164
  store i64 %165, i64* %5, align 8
  %166 = load i64, i64* %5, align 8
  %167 = load %struct.vmstate*, %struct.vmstate** %4, align 8
  %168 = getelementptr inbounds %struct.vmstate, %struct.vmstate* %167, i32 0, i32 1
  %169 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %168, i32 0, i32 2
  %170 = load i64, i64* %169, align 8
  %171 = call i64 @mips_round_page(i64 %170)
  %172 = add nsw i64 %166, %171
  %173 = load %struct.vmstate*, %struct.vmstate** %4, align 8
  %174 = getelementptr inbounds %struct.vmstate, %struct.vmstate* %173, i32 0, i32 1
  %175 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %174, i32 0, i32 3
  %176 = load i64, i64* %175, align 8
  %177 = call i64 @mips_round_page(i64 %176)
  %178 = add nsw i64 %172, %177
  store i64 %178, i64* %6, align 8
  %179 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %180 = load %struct.vmstate*, %struct.vmstate** %4, align 8
  %181 = getelementptr inbounds %struct.vmstate, %struct.vmstate* %180, i32 0, i32 1
  %182 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %181, i32 0, i32 2
  %183 = load i64, i64* %182, align 8
  %184 = load i64, i64* %5, align 8
  %185 = load i64, i64* %6, align 8
  %186 = load i64, i64* @MIPS_PAGE_SIZE, align 8
  %187 = call i32 @_kvm_pt_init(%struct.TYPE_12__* %179, i64 %183, i64 %184, i64 %185, i64 %186, i32 4)
  %188 = icmp eq i32 %187, -1
  br i1 %188, label %189, label %190

189:                                              ; preds = %101
  store i32 -1, i32* %2, align 4
  br label %215

190:                                              ; preds = %101
  %191 = load %struct.vmstate*, %struct.vmstate** %4, align 8
  %192 = getelementptr inbounds %struct.vmstate, %struct.vmstate* %191, i32 0, i32 1
  %193 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %192, i32 0, i32 2
  %194 = load i64, i64* %193, align 8
  %195 = call i64 @mips_round_page(i64 %194)
  %196 = load i64, i64* %5, align 8
  %197 = add nsw i64 %196, %195
  store i64 %197, i64* %5, align 8
  %198 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %199 = load %struct.vmstate*, %struct.vmstate** %4, align 8
  %200 = getelementptr inbounds %struct.vmstate, %struct.vmstate* %199, i32 0, i32 1
  %201 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %200, i32 0, i32 3
  %202 = load i64, i64* %201, align 8
  %203 = load i64, i64* %5, align 8
  %204 = call i32 @_kvm_pmap_init(%struct.TYPE_12__* %198, i64 %202, i64 %203)
  %205 = icmp eq i32 %204, -1
  br i1 %205, label %206, label %207

206:                                              ; preds = %190
  store i32 -1, i32* %2, align 4
  br label %215

207:                                              ; preds = %190
  %208 = load %struct.vmstate*, %struct.vmstate** %4, align 8
  %209 = getelementptr inbounds %struct.vmstate, %struct.vmstate* %208, i32 0, i32 1
  %210 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %209, i32 0, i32 3
  %211 = load i64, i64* %210, align 8
  %212 = call i64 @mips_round_page(i64 %211)
  %213 = load i64, i64* %5, align 8
  %214 = add nsw i64 %213, %212
  store i64 %214, i64* %5, align 8
  store i32 0, i32* %2, align 4
  br label %215

215:                                              ; preds = %207, %206, %189, %90, %67, %53, %11
  %216 = load i32, i32* %2, align 4
  ret i32 %216
}

declare dso_local %struct.vmstate* @_kvm_malloc(%struct.TYPE_12__*, i32) #1

declare dso_local i32 @_kvm_err(%struct.TYPE_12__*, i32, i8*, ...) #1

declare dso_local i32 @pread(i32, %struct.TYPE_13__*, i32, i32) #1

declare dso_local i64 @strncmp(i32, i32, i32) #1

declare dso_local i8* @_kvm32toh(%struct.TYPE_12__*, i64) #1

declare dso_local i8* @_kvm64toh(%struct.TYPE_12__*, i8*) #1

declare dso_local i64 @mips_round_page(i64) #1

declare dso_local i32 @_kvm_pt_init(%struct.TYPE_12__*, i64, i64, i64, i64, i32) #1

declare dso_local i32 @_kvm_pmap_init(%struct.TYPE_12__*, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
