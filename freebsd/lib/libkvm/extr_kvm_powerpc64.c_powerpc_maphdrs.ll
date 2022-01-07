; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libkvm/extr_kvm_powerpc64.c_powerpc_maphdrs.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libkvm/extr_kvm_powerpc64.c_powerpc_maphdrs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32, i32, i32 }
%struct.TYPE_8__ = type { i32, i32, %struct.vmstate* }
%struct.vmstate = type { i32, i64, %struct.TYPE_9__*, i8*, %struct.TYPE_9__* }

@PROT_READ = common dso_local global i32 0, align 4
@MAP_PRIVATE = common dso_local global i32 0, align 4
@MAP_FAILED = common dso_local global %struct.TYPE_9__* null, align 8
@.str = private unnamed_addr constant [20 x i8] c"cannot map corefile\00", align 1
@.str.1 = private unnamed_addr constant [28 x i8] c"cannot map corefile headers\00", align 1
@.str.2 = private unnamed_addr constant [17 x i8] c"invalid corefile\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_8__*)* @powerpc_maphdrs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @powerpc_maphdrs(%struct.TYPE_8__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_8__*, align 8
  %4 = alloca %struct.vmstate*, align 8
  %5 = alloca i64, align 8
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %3, align 8
  %6 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %7 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %6, i32 0, i32 2
  %8 = load %struct.vmstate*, %struct.vmstate** %7, align 8
  store %struct.vmstate* %8, %struct.vmstate** %4, align 8
  %9 = load %struct.vmstate*, %struct.vmstate** %4, align 8
  %10 = getelementptr inbounds %struct.vmstate, %struct.vmstate* %9, i32 0, i32 0
  store i32 16, i32* %10, align 8
  %11 = load %struct.vmstate*, %struct.vmstate** %4, align 8
  %12 = getelementptr inbounds %struct.vmstate, %struct.vmstate* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = load i32, i32* @PROT_READ, align 4
  %15 = load i32, i32* @MAP_PRIVATE, align 4
  %16 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %17 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = call i8* @mmap(i32* null, i32 %13, i32 %14, i32 %15, i32 %18, i32 0)
  %20 = bitcast i8* %19 to %struct.TYPE_9__*
  %21 = load %struct.vmstate*, %struct.vmstate** %4, align 8
  %22 = getelementptr inbounds %struct.vmstate, %struct.vmstate* %21, i32 0, i32 4
  store %struct.TYPE_9__* %20, %struct.TYPE_9__** %22, align 8
  %23 = load %struct.vmstate*, %struct.vmstate** %4, align 8
  %24 = getelementptr inbounds %struct.vmstate, %struct.vmstate* %23, i32 0, i32 4
  %25 = load %struct.TYPE_9__*, %struct.TYPE_9__** %24, align 8
  %26 = load %struct.TYPE_9__*, %struct.TYPE_9__** @MAP_FAILED, align 8
  %27 = icmp eq %struct.TYPE_9__* %25, %26
  br i1 %27, label %28, label %34

28:                                               ; preds = %1
  %29 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %30 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %31 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = call i32 @_kvm_err(%struct.TYPE_8__* %29, i32 %32, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %2, align 4
  br label %171

34:                                               ; preds = %1
  %35 = load %struct.vmstate*, %struct.vmstate** %4, align 8
  %36 = getelementptr inbounds %struct.vmstate, %struct.vmstate* %35, i32 0, i32 1
  store i64 0, i64* %36, align 8
  %37 = load %struct.vmstate*, %struct.vmstate** %4, align 8
  %38 = getelementptr inbounds %struct.vmstate, %struct.vmstate* %37, i32 0, i32 4
  %39 = load %struct.TYPE_9__*, %struct.TYPE_9__** %38, align 8
  %40 = load %struct.vmstate*, %struct.vmstate** %4, align 8
  %41 = getelementptr inbounds %struct.vmstate, %struct.vmstate* %40, i32 0, i32 2
  store %struct.TYPE_9__* %39, %struct.TYPE_9__** %41, align 8
  %42 = load %struct.vmstate*, %struct.vmstate** %4, align 8
  %43 = getelementptr inbounds %struct.vmstate, %struct.vmstate* %42, i32 0, i32 2
  %44 = load %struct.TYPE_9__*, %struct.TYPE_9__** %43, align 8
  %45 = call i32 @valid_elf_header(%struct.TYPE_9__* %44)
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %79, label %47

47:                                               ; preds = %34
  %48 = load %struct.vmstate*, %struct.vmstate** %4, align 8
  %49 = getelementptr inbounds %struct.vmstate, %struct.vmstate* %48, i32 0, i32 4
  %50 = load %struct.TYPE_9__*, %struct.TYPE_9__** %49, align 8
  %51 = call i64 @dump_header_size(%struct.TYPE_9__* %50)
  %52 = load %struct.vmstate*, %struct.vmstate** %4, align 8
  %53 = getelementptr inbounds %struct.vmstate, %struct.vmstate* %52, i32 0, i32 1
  store i64 %51, i64* %53, align 8
  %54 = load %struct.vmstate*, %struct.vmstate** %4, align 8
  %55 = getelementptr inbounds %struct.vmstate, %struct.vmstate* %54, i32 0, i32 1
  %56 = load i64, i64* %55, align 8
  %57 = icmp eq i64 %56, 0
  br i1 %57, label %58, label %59

58:                                               ; preds = %47
  br label %165

59:                                               ; preds = %47
  %60 = load %struct.vmstate*, %struct.vmstate** %4, align 8
  %61 = getelementptr inbounds %struct.vmstate, %struct.vmstate* %60, i32 0, i32 4
  %62 = load %struct.TYPE_9__*, %struct.TYPE_9__** %61, align 8
  %63 = ptrtoint %struct.TYPE_9__* %62 to i64
  %64 = load %struct.vmstate*, %struct.vmstate** %4, align 8
  %65 = getelementptr inbounds %struct.vmstate, %struct.vmstate* %64, i32 0, i32 1
  %66 = load i64, i64* %65, align 8
  %67 = add i64 %63, %66
  %68 = inttoptr i64 %67 to i8*
  %69 = bitcast i8* %68 to %struct.TYPE_9__*
  %70 = load %struct.vmstate*, %struct.vmstate** %4, align 8
  %71 = getelementptr inbounds %struct.vmstate, %struct.vmstate* %70, i32 0, i32 2
  store %struct.TYPE_9__* %69, %struct.TYPE_9__** %71, align 8
  %72 = load %struct.vmstate*, %struct.vmstate** %4, align 8
  %73 = getelementptr inbounds %struct.vmstate, %struct.vmstate* %72, i32 0, i32 2
  %74 = load %struct.TYPE_9__*, %struct.TYPE_9__** %73, align 8
  %75 = call i32 @valid_elf_header(%struct.TYPE_9__* %74)
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %78, label %77

77:                                               ; preds = %59
  br label %165

78:                                               ; preds = %59
  br label %79

79:                                               ; preds = %78, %34
  %80 = load %struct.vmstate*, %struct.vmstate** %4, align 8
  %81 = getelementptr inbounds %struct.vmstate, %struct.vmstate* %80, i32 0, i32 2
  %82 = load %struct.TYPE_9__*, %struct.TYPE_9__** %81, align 8
  %83 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %82, i32 0, i32 2
  %84 = load i32, i32* %83, align 4
  %85 = call i64 @be16toh(i32 %84)
  %86 = load %struct.vmstate*, %struct.vmstate** %4, align 8
  %87 = getelementptr inbounds %struct.vmstate, %struct.vmstate* %86, i32 0, i32 2
  %88 = load %struct.TYPE_9__*, %struct.TYPE_9__** %87, align 8
  %89 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %88, i32 0, i32 1
  %90 = load i32, i32* %89, align 4
  %91 = call i64 @be16toh(i32 %90)
  %92 = mul i64 %85, %91
  %93 = load %struct.vmstate*, %struct.vmstate** %4, align 8
  %94 = getelementptr inbounds %struct.vmstate, %struct.vmstate* %93, i32 0, i32 2
  %95 = load %struct.TYPE_9__*, %struct.TYPE_9__** %94, align 8
  %96 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 4
  %98 = call i64 @be64toh(i32 %97)
  %99 = add i64 %92, %98
  store i64 %99, i64* %5, align 8
  %100 = load %struct.vmstate*, %struct.vmstate** %4, align 8
  %101 = getelementptr inbounds %struct.vmstate, %struct.vmstate* %100, i32 0, i32 4
  %102 = load %struct.TYPE_9__*, %struct.TYPE_9__** %101, align 8
  %103 = load %struct.vmstate*, %struct.vmstate** %4, align 8
  %104 = getelementptr inbounds %struct.vmstate, %struct.vmstate* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 8
  %106 = call i32 @munmap(%struct.TYPE_9__* %102, i32 %105)
  %107 = load %struct.vmstate*, %struct.vmstate** %4, align 8
  %108 = getelementptr inbounds %struct.vmstate, %struct.vmstate* %107, i32 0, i32 1
  %109 = load i64, i64* %108, align 8
  %110 = load i64, i64* %5, align 8
  %111 = add i64 %109, %110
  %112 = trunc i64 %111 to i32
  %113 = load %struct.vmstate*, %struct.vmstate** %4, align 8
  %114 = getelementptr inbounds %struct.vmstate, %struct.vmstate* %113, i32 0, i32 0
  store i32 %112, i32* %114, align 8
  %115 = load %struct.vmstate*, %struct.vmstate** %4, align 8
  %116 = getelementptr inbounds %struct.vmstate, %struct.vmstate* %115, i32 0, i32 0
  %117 = load i32, i32* %116, align 8
  %118 = load i32, i32* @PROT_READ, align 4
  %119 = load i32, i32* @MAP_PRIVATE, align 4
  %120 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %121 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %120, i32 0, i32 1
  %122 = load i32, i32* %121, align 4
  %123 = call i8* @mmap(i32* null, i32 %117, i32 %118, i32 %119, i32 %122, i32 0)
  %124 = bitcast i8* %123 to %struct.TYPE_9__*
  %125 = load %struct.vmstate*, %struct.vmstate** %4, align 8
  %126 = getelementptr inbounds %struct.vmstate, %struct.vmstate* %125, i32 0, i32 4
  store %struct.TYPE_9__* %124, %struct.TYPE_9__** %126, align 8
  %127 = load %struct.vmstate*, %struct.vmstate** %4, align 8
  %128 = getelementptr inbounds %struct.vmstate, %struct.vmstate* %127, i32 0, i32 4
  %129 = load %struct.TYPE_9__*, %struct.TYPE_9__** %128, align 8
  %130 = load %struct.TYPE_9__*, %struct.TYPE_9__** @MAP_FAILED, align 8
  %131 = icmp eq %struct.TYPE_9__* %129, %130
  br i1 %131, label %132, label %138

132:                                              ; preds = %79
  %133 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %134 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %135 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %134, i32 0, i32 0
  %136 = load i32, i32* %135, align 8
  %137 = call i32 @_kvm_err(%struct.TYPE_8__* %133, i32 %136, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0))
  store i32 -1, i32* %2, align 4
  br label %171

138:                                              ; preds = %79
  %139 = load %struct.vmstate*, %struct.vmstate** %4, align 8
  %140 = getelementptr inbounds %struct.vmstate, %struct.vmstate* %139, i32 0, i32 4
  %141 = load %struct.TYPE_9__*, %struct.TYPE_9__** %140, align 8
  %142 = ptrtoint %struct.TYPE_9__* %141 to i64
  %143 = load %struct.vmstate*, %struct.vmstate** %4, align 8
  %144 = getelementptr inbounds %struct.vmstate, %struct.vmstate* %143, i32 0, i32 1
  %145 = load i64, i64* %144, align 8
  %146 = add i64 %142, %145
  %147 = inttoptr i64 %146 to i8*
  %148 = bitcast i8* %147 to %struct.TYPE_9__*
  %149 = load %struct.vmstate*, %struct.vmstate** %4, align 8
  %150 = getelementptr inbounds %struct.vmstate, %struct.vmstate* %149, i32 0, i32 2
  store %struct.TYPE_9__* %148, %struct.TYPE_9__** %150, align 8
  %151 = load %struct.vmstate*, %struct.vmstate** %4, align 8
  %152 = getelementptr inbounds %struct.vmstate, %struct.vmstate* %151, i32 0, i32 2
  %153 = load %struct.TYPE_9__*, %struct.TYPE_9__** %152, align 8
  %154 = ptrtoint %struct.TYPE_9__* %153 to i64
  %155 = load %struct.vmstate*, %struct.vmstate** %4, align 8
  %156 = getelementptr inbounds %struct.vmstate, %struct.vmstate* %155, i32 0, i32 2
  %157 = load %struct.TYPE_9__*, %struct.TYPE_9__** %156, align 8
  %158 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %157, i32 0, i32 0
  %159 = load i32, i32* %158, align 4
  %160 = call i64 @be64toh(i32 %159)
  %161 = add i64 %154, %160
  %162 = inttoptr i64 %161 to i8*
  %163 = load %struct.vmstate*, %struct.vmstate** %4, align 8
  %164 = getelementptr inbounds %struct.vmstate, %struct.vmstate* %163, i32 0, i32 3
  store i8* %162, i8** %164, align 8
  store i32 0, i32* %2, align 4
  br label %171

165:                                              ; preds = %77, %58
  %166 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %167 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %168 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %167, i32 0, i32 0
  %169 = load i32, i32* %168, align 8
  %170 = call i32 @_kvm_err(%struct.TYPE_8__* %166, i32 %169, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i64 0, i64 0))
  store i32 -1, i32* %2, align 4
  br label %171

171:                                              ; preds = %165, %138, %132, %28
  %172 = load i32, i32* %2, align 4
  ret i32 %172
}

declare dso_local i8* @mmap(i32*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @_kvm_err(%struct.TYPE_8__*, i32, i8*) #1

declare dso_local i32 @valid_elf_header(%struct.TYPE_9__*) #1

declare dso_local i64 @dump_header_size(%struct.TYPE_9__*) #1

declare dso_local i64 @be16toh(i32) #1

declare dso_local i64 @be64toh(i32) #1

declare dso_local i32 @munmap(%struct.TYPE_9__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
