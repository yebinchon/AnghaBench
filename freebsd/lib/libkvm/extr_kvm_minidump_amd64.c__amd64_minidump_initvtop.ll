; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libkvm/extr_kvm_minidump_amd64.c__amd64_minidump_initvtop.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libkvm/extr_kvm_minidump_amd64.c__amd64_minidump_initvtop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, i32, %struct.vmstate* }
%struct.vmstate = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32, i32, i32, i32, i8*, i8*, i8*, i32 }

@.str = private unnamed_addr constant [19 x i8] c"cannot allocate vm\00", align 1
@.str.1 = private unnamed_addr constant [24 x i8] c"cannot read dump header\00", align 1
@MINIDUMP_MAGIC = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [33 x i8] c"not a minidump for this platform\00", align 1
@MINIDUMP_VERSION = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [43 x i8] c"wrong minidump version. expected %d got %d\00", align 1
@AMD64_PAGE_SIZE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_8__*)* @_amd64_minidump_initvtop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @_amd64_minidump_initvtop(%struct.TYPE_8__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_8__*, align 8
  %4 = alloca %struct.vmstate*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %3, align 8
  %7 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %8 = call %struct.vmstate* @_kvm_malloc(%struct.TYPE_8__* %7, i32 48)
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
  br label %190

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
  %26 = call i32 @pread(i32 %23, %struct.TYPE_9__* %25, i32 48, i32 0)
  %27 = sext i32 %26 to i64
  %28 = icmp ne i64 %27, 48
  br i1 %28, label %29, label %35

29:                                               ; preds = %17
  %30 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %31 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %32 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = call i32 (%struct.TYPE_8__*, i32, i8*, ...) @_kvm_err(%struct.TYPE_8__* %30, i32 %33, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0))
  store i32 -1, i32* %2, align 4
  br label %190

35:                                               ; preds = %17
  %36 = load i32, i32* @MINIDUMP_MAGIC, align 4
  %37 = load %struct.vmstate*, %struct.vmstate** %4, align 8
  %38 = getelementptr inbounds %struct.vmstate, %struct.vmstate* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %38, i32 0, i32 7
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
  br label %190

49:                                               ; preds = %35
  %50 = load %struct.vmstate*, %struct.vmstate** %4, align 8
  %51 = getelementptr inbounds %struct.vmstate, %struct.vmstate* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = call i8* @le32toh(i32 %53)
  %55 = ptrtoint i8* %54 to i32
  %56 = load %struct.vmstate*, %struct.vmstate** %4, align 8
  %57 = getelementptr inbounds %struct.vmstate, %struct.vmstate* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %57, i32 0, i32 0
  store i32 %55, i32* %58, align 8
  %59 = load %struct.vmstate*, %struct.vmstate** %4, align 8
  %60 = getelementptr inbounds %struct.vmstate, %struct.vmstate* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = load i32, i32* @MINIDUMP_VERSION, align 4
  %64 = icmp ne i32 %62, %63
  br i1 %64, label %65, label %82

65:                                               ; preds = %49
  %66 = load %struct.vmstate*, %struct.vmstate** %4, align 8
  %67 = getelementptr inbounds %struct.vmstate, %struct.vmstate* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  %70 = icmp ne i32 %69, 1
  br i1 %70, label %71, label %82

71:                                               ; preds = %65
  %72 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %73 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %74 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 8
  %76 = load i32, i32* @MINIDUMP_VERSION, align 4
  %77 = load %struct.vmstate*, %struct.vmstate** %4, align 8
  %78 = getelementptr inbounds %struct.vmstate, %struct.vmstate* %77, i32 0, i32 0
  %79 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 8
  %81 = call i32 (%struct.TYPE_8__*, i32, i8*, ...) @_kvm_err(%struct.TYPE_8__* %72, i32 %75, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.3, i64 0, i64 0), i32 %76, i32 %80)
  store i32 -1, i32* %2, align 4
  br label %190

82:                                               ; preds = %65, %49
  %83 = load %struct.vmstate*, %struct.vmstate** %4, align 8
  %84 = getelementptr inbounds %struct.vmstate, %struct.vmstate* %83, i32 0, i32 0
  %85 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %84, i32 0, i32 1
  %86 = load i32, i32* %85, align 4
  %87 = call i8* @le32toh(i32 %86)
  %88 = ptrtoint i8* %87 to i32
  %89 = load %struct.vmstate*, %struct.vmstate** %4, align 8
  %90 = getelementptr inbounds %struct.vmstate, %struct.vmstate* %89, i32 0, i32 0
  %91 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %90, i32 0, i32 1
  store i32 %88, i32* %91, align 4
  %92 = load %struct.vmstate*, %struct.vmstate** %4, align 8
  %93 = getelementptr inbounds %struct.vmstate, %struct.vmstate* %92, i32 0, i32 0
  %94 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %93, i32 0, i32 2
  %95 = load i32, i32* %94, align 8
  %96 = call i8* @le32toh(i32 %95)
  %97 = ptrtoint i8* %96 to i32
  %98 = load %struct.vmstate*, %struct.vmstate** %4, align 8
  %99 = getelementptr inbounds %struct.vmstate, %struct.vmstate* %98, i32 0, i32 0
  %100 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %99, i32 0, i32 2
  store i32 %97, i32* %100, align 8
  %101 = load %struct.vmstate*, %struct.vmstate** %4, align 8
  %102 = getelementptr inbounds %struct.vmstate, %struct.vmstate* %101, i32 0, i32 0
  %103 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %102, i32 0, i32 3
  %104 = load i32, i32* %103, align 4
  %105 = call i8* @le32toh(i32 %104)
  %106 = ptrtoint i8* %105 to i32
  %107 = load %struct.vmstate*, %struct.vmstate** %4, align 8
  %108 = getelementptr inbounds %struct.vmstate, %struct.vmstate* %107, i32 0, i32 0
  %109 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %108, i32 0, i32 3
  store i32 %106, i32* %109, align 4
  %110 = load %struct.vmstate*, %struct.vmstate** %4, align 8
  %111 = getelementptr inbounds %struct.vmstate, %struct.vmstate* %110, i32 0, i32 0
  %112 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %111, i32 0, i32 6
  %113 = load i8*, i8** %112, align 8
  %114 = call i8* @le64toh(i8* %113)
  %115 = load %struct.vmstate*, %struct.vmstate** %4, align 8
  %116 = getelementptr inbounds %struct.vmstate, %struct.vmstate* %115, i32 0, i32 0
  %117 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %116, i32 0, i32 6
  store i8* %114, i8** %117, align 8
  %118 = load %struct.vmstate*, %struct.vmstate** %4, align 8
  %119 = getelementptr inbounds %struct.vmstate, %struct.vmstate* %118, i32 0, i32 0
  %120 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %119, i32 0, i32 5
  %121 = load i8*, i8** %120, align 8
  %122 = call i8* @le64toh(i8* %121)
  %123 = load %struct.vmstate*, %struct.vmstate** %4, align 8
  %124 = getelementptr inbounds %struct.vmstate, %struct.vmstate* %123, i32 0, i32 0
  %125 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %124, i32 0, i32 5
  store i8* %122, i8** %125, align 8
  %126 = load %struct.vmstate*, %struct.vmstate** %4, align 8
  %127 = getelementptr inbounds %struct.vmstate, %struct.vmstate* %126, i32 0, i32 0
  %128 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %127, i32 0, i32 4
  %129 = load i8*, i8** %128, align 8
  %130 = call i8* @le64toh(i8* %129)
  %131 = load %struct.vmstate*, %struct.vmstate** %4, align 8
  %132 = getelementptr inbounds %struct.vmstate, %struct.vmstate* %131, i32 0, i32 0
  %133 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %132, i32 0, i32 4
  store i8* %130, i8** %133, align 8
  %134 = load i64, i64* @AMD64_PAGE_SIZE, align 8
  %135 = load %struct.vmstate*, %struct.vmstate** %4, align 8
  %136 = getelementptr inbounds %struct.vmstate, %struct.vmstate* %135, i32 0, i32 0
  %137 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %136, i32 0, i32 1
  %138 = load i32, i32* %137, align 4
  %139 = call i64 @amd64_round_page(i32 %138)
  %140 = add nsw i64 %134, %139
  store i64 %140, i64* %5, align 8
  %141 = load i64, i64* %5, align 8
  %142 = load %struct.vmstate*, %struct.vmstate** %4, align 8
  %143 = getelementptr inbounds %struct.vmstate, %struct.vmstate* %142, i32 0, i32 0
  %144 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %143, i32 0, i32 2
  %145 = load i32, i32* %144, align 8
  %146 = call i64 @amd64_round_page(i32 %145)
  %147 = add nsw i64 %141, %146
  %148 = load %struct.vmstate*, %struct.vmstate** %4, align 8
  %149 = getelementptr inbounds %struct.vmstate, %struct.vmstate* %148, i32 0, i32 0
  %150 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %149, i32 0, i32 3
  %151 = load i32, i32* %150, align 4
  %152 = call i64 @amd64_round_page(i32 %151)
  %153 = add nsw i64 %147, %152
  store i64 %153, i64* %6, align 8
  %154 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %155 = load %struct.vmstate*, %struct.vmstate** %4, align 8
  %156 = getelementptr inbounds %struct.vmstate, %struct.vmstate* %155, i32 0, i32 0
  %157 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %156, i32 0, i32 2
  %158 = load i32, i32* %157, align 8
  %159 = load i64, i64* %5, align 8
  %160 = load i64, i64* %6, align 8
  %161 = load i64, i64* @AMD64_PAGE_SIZE, align 8
  %162 = call i32 @_kvm_pt_init(%struct.TYPE_8__* %154, i32 %158, i64 %159, i64 %160, i64 %161, i32 4)
  %163 = icmp eq i32 %162, -1
  br i1 %163, label %164, label %165

164:                                              ; preds = %82
  store i32 -1, i32* %2, align 4
  br label %190

165:                                              ; preds = %82
  %166 = load %struct.vmstate*, %struct.vmstate** %4, align 8
  %167 = getelementptr inbounds %struct.vmstate, %struct.vmstate* %166, i32 0, i32 0
  %168 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %167, i32 0, i32 2
  %169 = load i32, i32* %168, align 8
  %170 = call i64 @amd64_round_page(i32 %169)
  %171 = load i64, i64* %5, align 8
  %172 = add nsw i64 %171, %170
  store i64 %172, i64* %5, align 8
  %173 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %174 = load %struct.vmstate*, %struct.vmstate** %4, align 8
  %175 = getelementptr inbounds %struct.vmstate, %struct.vmstate* %174, i32 0, i32 0
  %176 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %175, i32 0, i32 3
  %177 = load i32, i32* %176, align 4
  %178 = load i64, i64* %5, align 8
  %179 = call i32 @_kvm_pmap_init(%struct.TYPE_8__* %173, i32 %177, i64 %178)
  %180 = icmp eq i32 %179, -1
  br i1 %180, label %181, label %182

181:                                              ; preds = %165
  store i32 -1, i32* %2, align 4
  br label %190

182:                                              ; preds = %165
  %183 = load %struct.vmstate*, %struct.vmstate** %4, align 8
  %184 = getelementptr inbounds %struct.vmstate, %struct.vmstate* %183, i32 0, i32 0
  %185 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %184, i32 0, i32 3
  %186 = load i32, i32* %185, align 4
  %187 = call i64 @amd64_round_page(i32 %186)
  %188 = load i64, i64* %5, align 8
  %189 = add nsw i64 %188, %187
  store i64 %189, i64* %5, align 8
  store i32 0, i32* %2, align 4
  br label %190

190:                                              ; preds = %182, %181, %164, %71, %43, %29, %11
  %191 = load i32, i32* %2, align 4
  ret i32 %191
}

declare dso_local %struct.vmstate* @_kvm_malloc(%struct.TYPE_8__*, i32) #1

declare dso_local i32 @_kvm_err(%struct.TYPE_8__*, i32, i8*, ...) #1

declare dso_local i32 @pread(i32, %struct.TYPE_9__*, i32, i32) #1

declare dso_local i64 @strncmp(i32, i32, i32) #1

declare dso_local i8* @le32toh(i32) #1

declare dso_local i8* @le64toh(i8*) #1

declare dso_local i64 @amd64_round_page(i32) #1

declare dso_local i32 @_kvm_pt_init(%struct.TYPE_8__*, i32, i64, i64, i64, i32) #1

declare dso_local i32 @_kvm_pmap_init(%struct.TYPE_8__*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
