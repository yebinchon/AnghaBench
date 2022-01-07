; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libkvm/extr_kvm_minidump_riscv.c__riscv_minidump_initvtop.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libkvm/extr_kvm_minidump_riscv.c__riscv_minidump_initvtop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, i32, %struct.vmstate* }
%struct.vmstate = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i64, i64, i64, i64, i8*, i8*, i8*, i8*, i32 }

@.str = private unnamed_addr constant [19 x i8] c"cannot allocate vm\00", align 1
@.str.1 = private unnamed_addr constant [24 x i8] c"cannot read dump header\00", align 1
@MINIDUMP_MAGIC = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [33 x i8] c"not a minidump for this platform\00", align 1
@MINIDUMP_VERSION = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [43 x i8] c"wrong minidump version. Expected %d got %d\00", align 1
@RISCV_PAGE_SIZE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_8__*)* @_riscv_minidump_initvtop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @_riscv_minidump_initvtop(%struct.TYPE_8__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_8__*, align 8
  %4 = alloca %struct.vmstate*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %3, align 8
  %7 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %8 = call %struct.vmstate* @_kvm_malloc(%struct.TYPE_8__* %7, i32 72)
  store %struct.vmstate* %8, %struct.vmstate** %4, align 8
  %9 = load %struct.vmstate*, %struct.vmstate** %4, align 8
  %10 = icmp eq %struct.vmstate* %9, null
  br i1 %10, label %11, label %17

11:                                               ; preds = %1
  %12 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %13 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %14 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = call i32 (%struct.TYPE_8__*, i32, i8*, ...) @_kvm_err(%struct.TYPE_8__* %12, i32 %15, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %2, align 4
  br label %192

17:                                               ; preds = %1
  %18 = load %struct.vmstate*, %struct.vmstate** %4, align 8
  %19 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %20 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %19, i32 0, i32 2
  store %struct.vmstate* %18, %struct.vmstate** %20, align 8
  %21 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %22 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.vmstate*, %struct.vmstate** %4, align 8
  %25 = getelementptr inbounds %struct.vmstate, %struct.vmstate* %24, i32 0, i32 0
  %26 = call i32 @pread(i32 %23, %struct.TYPE_9__* %25, i32 72, i32 0)
  %27 = sext i32 %26 to i64
  %28 = icmp ne i64 %27, 72
  br i1 %28, label %29, label %35

29:                                               ; preds = %17
  %30 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %31 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %32 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = call i32 (%struct.TYPE_8__*, i32, i8*, ...) @_kvm_err(%struct.TYPE_8__* %30, i32 %33, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0))
  store i32 -1, i32* %2, align 4
  br label %192

35:                                               ; preds = %17
  %36 = load i32, i32* @MINIDUMP_MAGIC, align 4
  %37 = load %struct.vmstate*, %struct.vmstate** %4, align 8
  %38 = getelementptr inbounds %struct.vmstate, %struct.vmstate* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %38, i32 0, i32 8
  %40 = load i32, i32* %39, align 8
  %41 = call i64 @strncmp(i32 %36, i32 %40, i32 4)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %49

43:                                               ; preds = %35
  %44 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %45 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %46 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = call i32 (%struct.TYPE_8__*, i32, i8*, ...) @_kvm_err(%struct.TYPE_8__* %44, i32 %47, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2, i64 0, i64 0))
  store i32 -1, i32* %2, align 4
  br label %192

49:                                               ; preds = %35
  %50 = load %struct.vmstate*, %struct.vmstate** %4, align 8
  %51 = getelementptr inbounds %struct.vmstate, %struct.vmstate* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = call i8* @le32toh(i64 %53)
  %55 = ptrtoint i8* %54 to i64
  %56 = load %struct.vmstate*, %struct.vmstate** %4, align 8
  %57 = getelementptr inbounds %struct.vmstate, %struct.vmstate* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %57, i32 0, i32 0
  store i64 %55, i64* %58, align 8
  %59 = load %struct.vmstate*, %struct.vmstate** %4, align 8
  %60 = getelementptr inbounds %struct.vmstate, %struct.vmstate* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = load i64, i64* @MINIDUMP_VERSION, align 8
  %64 = icmp ne i64 %62, %63
  br i1 %64, label %65, label %76

65:                                               ; preds = %49
  %66 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %67 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %68 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  %70 = load i64, i64* @MINIDUMP_VERSION, align 8
  %71 = load %struct.vmstate*, %struct.vmstate** %4, align 8
  %72 = getelementptr inbounds %struct.vmstate, %struct.vmstate* %71, i32 0, i32 0
  %73 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %72, i32 0, i32 0
  %74 = load i64, i64* %73, align 8
  %75 = call i32 (%struct.TYPE_8__*, i32, i8*, ...) @_kvm_err(%struct.TYPE_8__* %66, i32 %69, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.3, i64 0, i64 0), i64 %70, i64 %74)
  store i32 -1, i32* %2, align 4
  br label %192

76:                                               ; preds = %49
  %77 = load %struct.vmstate*, %struct.vmstate** %4, align 8
  %78 = getelementptr inbounds %struct.vmstate, %struct.vmstate* %77, i32 0, i32 0
  %79 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %78, i32 0, i32 1
  %80 = load i64, i64* %79, align 8
  %81 = call i8* @le32toh(i64 %80)
  %82 = ptrtoint i8* %81 to i64
  %83 = load %struct.vmstate*, %struct.vmstate** %4, align 8
  %84 = getelementptr inbounds %struct.vmstate, %struct.vmstate* %83, i32 0, i32 0
  %85 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %84, i32 0, i32 1
  store i64 %82, i64* %85, align 8
  %86 = load %struct.vmstate*, %struct.vmstate** %4, align 8
  %87 = getelementptr inbounds %struct.vmstate, %struct.vmstate* %86, i32 0, i32 0
  %88 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %87, i32 0, i32 2
  %89 = load i64, i64* %88, align 8
  %90 = call i8* @le32toh(i64 %89)
  %91 = ptrtoint i8* %90 to i64
  %92 = load %struct.vmstate*, %struct.vmstate** %4, align 8
  %93 = getelementptr inbounds %struct.vmstate, %struct.vmstate* %92, i32 0, i32 0
  %94 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %93, i32 0, i32 2
  store i64 %91, i64* %94, align 8
  %95 = load %struct.vmstate*, %struct.vmstate** %4, align 8
  %96 = getelementptr inbounds %struct.vmstate, %struct.vmstate* %95, i32 0, i32 0
  %97 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %96, i32 0, i32 3
  %98 = load i64, i64* %97, align 8
  %99 = call i8* @le32toh(i64 %98)
  %100 = ptrtoint i8* %99 to i64
  %101 = load %struct.vmstate*, %struct.vmstate** %4, align 8
  %102 = getelementptr inbounds %struct.vmstate, %struct.vmstate* %101, i32 0, i32 0
  %103 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %102, i32 0, i32 3
  store i64 %100, i64* %103, align 8
  %104 = load %struct.vmstate*, %struct.vmstate** %4, align 8
  %105 = getelementptr inbounds %struct.vmstate, %struct.vmstate* %104, i32 0, i32 0
  %106 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %105, i32 0, i32 7
  %107 = load i8*, i8** %106, align 8
  %108 = call i8* @le64toh(i8* %107)
  %109 = load %struct.vmstate*, %struct.vmstate** %4, align 8
  %110 = getelementptr inbounds %struct.vmstate, %struct.vmstate* %109, i32 0, i32 0
  %111 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %110, i32 0, i32 7
  store i8* %108, i8** %111, align 8
  %112 = load %struct.vmstate*, %struct.vmstate** %4, align 8
  %113 = getelementptr inbounds %struct.vmstate, %struct.vmstate* %112, i32 0, i32 0
  %114 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %113, i32 0, i32 6
  %115 = load i8*, i8** %114, align 8
  %116 = call i8* @le64toh(i8* %115)
  %117 = load %struct.vmstate*, %struct.vmstate** %4, align 8
  %118 = getelementptr inbounds %struct.vmstate, %struct.vmstate* %117, i32 0, i32 0
  %119 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %118, i32 0, i32 6
  store i8* %116, i8** %119, align 8
  %120 = load %struct.vmstate*, %struct.vmstate** %4, align 8
  %121 = getelementptr inbounds %struct.vmstate, %struct.vmstate* %120, i32 0, i32 0
  %122 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %121, i32 0, i32 5
  %123 = load i8*, i8** %122, align 8
  %124 = call i8* @le64toh(i8* %123)
  %125 = load %struct.vmstate*, %struct.vmstate** %4, align 8
  %126 = getelementptr inbounds %struct.vmstate, %struct.vmstate* %125, i32 0, i32 0
  %127 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %126, i32 0, i32 5
  store i8* %124, i8** %127, align 8
  %128 = load %struct.vmstate*, %struct.vmstate** %4, align 8
  %129 = getelementptr inbounds %struct.vmstate, %struct.vmstate* %128, i32 0, i32 0
  %130 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %129, i32 0, i32 4
  %131 = load i8*, i8** %130, align 8
  %132 = call i8* @le64toh(i8* %131)
  %133 = load %struct.vmstate*, %struct.vmstate** %4, align 8
  %134 = getelementptr inbounds %struct.vmstate, %struct.vmstate* %133, i32 0, i32 0
  %135 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %134, i32 0, i32 4
  store i8* %132, i8** %135, align 8
  %136 = load i64, i64* @RISCV_PAGE_SIZE, align 8
  %137 = load %struct.vmstate*, %struct.vmstate** %4, align 8
  %138 = getelementptr inbounds %struct.vmstate, %struct.vmstate* %137, i32 0, i32 0
  %139 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %138, i32 0, i32 1
  %140 = load i64, i64* %139, align 8
  %141 = call i64 @riscv_round_page(i64 %140)
  %142 = add nsw i64 %136, %141
  store i64 %142, i64* %5, align 8
  %143 = load i64, i64* %5, align 8
  %144 = load %struct.vmstate*, %struct.vmstate** %4, align 8
  %145 = getelementptr inbounds %struct.vmstate, %struct.vmstate* %144, i32 0, i32 0
  %146 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %145, i32 0, i32 2
  %147 = load i64, i64* %146, align 8
  %148 = call i64 @riscv_round_page(i64 %147)
  %149 = add nsw i64 %143, %148
  %150 = load %struct.vmstate*, %struct.vmstate** %4, align 8
  %151 = getelementptr inbounds %struct.vmstate, %struct.vmstate* %150, i32 0, i32 0
  %152 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %151, i32 0, i32 3
  %153 = load i64, i64* %152, align 8
  %154 = call i64 @riscv_round_page(i64 %153)
  %155 = add nsw i64 %149, %154
  store i64 %155, i64* %6, align 8
  %156 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %157 = load %struct.vmstate*, %struct.vmstate** %4, align 8
  %158 = getelementptr inbounds %struct.vmstate, %struct.vmstate* %157, i32 0, i32 0
  %159 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %158, i32 0, i32 2
  %160 = load i64, i64* %159, align 8
  %161 = load i64, i64* %5, align 8
  %162 = load i64, i64* %6, align 8
  %163 = load i64, i64* @RISCV_PAGE_SIZE, align 8
  %164 = call i32 @_kvm_pt_init(%struct.TYPE_8__* %156, i64 %160, i64 %161, i64 %162, i64 %163, i32 4)
  %165 = icmp eq i32 %164, -1
  br i1 %165, label %166, label %167

166:                                              ; preds = %76
  store i32 -1, i32* %2, align 4
  br label %192

167:                                              ; preds = %76
  %168 = load %struct.vmstate*, %struct.vmstate** %4, align 8
  %169 = getelementptr inbounds %struct.vmstate, %struct.vmstate* %168, i32 0, i32 0
  %170 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %169, i32 0, i32 2
  %171 = load i64, i64* %170, align 8
  %172 = call i64 @riscv_round_page(i64 %171)
  %173 = load i64, i64* %5, align 8
  %174 = add nsw i64 %173, %172
  store i64 %174, i64* %5, align 8
  %175 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %176 = load %struct.vmstate*, %struct.vmstate** %4, align 8
  %177 = getelementptr inbounds %struct.vmstate, %struct.vmstate* %176, i32 0, i32 0
  %178 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %177, i32 0, i32 3
  %179 = load i64, i64* %178, align 8
  %180 = load i64, i64* %5, align 8
  %181 = call i32 @_kvm_pmap_init(%struct.TYPE_8__* %175, i64 %179, i64 %180)
  %182 = icmp eq i32 %181, -1
  br i1 %182, label %183, label %184

183:                                              ; preds = %167
  store i32 -1, i32* %2, align 4
  br label %192

184:                                              ; preds = %167
  %185 = load %struct.vmstate*, %struct.vmstate** %4, align 8
  %186 = getelementptr inbounds %struct.vmstate, %struct.vmstate* %185, i32 0, i32 0
  %187 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %186, i32 0, i32 3
  %188 = load i64, i64* %187, align 8
  %189 = call i64 @riscv_round_page(i64 %188)
  %190 = load i64, i64* %5, align 8
  %191 = add nsw i64 %190, %189
  store i64 %191, i64* %5, align 8
  store i32 0, i32* %2, align 4
  br label %192

192:                                              ; preds = %184, %183, %166, %65, %43, %29, %11
  %193 = load i32, i32* %2, align 4
  ret i32 %193
}

declare dso_local %struct.vmstate* @_kvm_malloc(%struct.TYPE_8__*, i32) #1

declare dso_local i32 @_kvm_err(%struct.TYPE_8__*, i32, i8*, ...) #1

declare dso_local i32 @pread(i32, %struct.TYPE_9__*, i32, i32) #1

declare dso_local i64 @strncmp(i32, i32, i32) #1

declare dso_local i8* @le32toh(i64) #1

declare dso_local i8* @le64toh(i8*) #1

declare dso_local i64 @riscv_round_page(i64) #1

declare dso_local i32 @_kvm_pt_init(%struct.TYPE_8__*, i64, i64, i64, i64, i32) #1

declare dso_local i32 @_kvm_pmap_init(%struct.TYPE_8__*, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
