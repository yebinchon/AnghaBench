; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libpcap/extr_gencode.c_gen_dnhostop.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libpcap/extr_gencode.c_gen_dnhostop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.block = type { i32 }

@.str = private unnamed_addr constant [35 x i8] c"ISO host filtering not implemented\00", align 1
@ETHERTYPE_DN = common dso_local global i32 0, align 4
@OR_LINKPL = common dso_local global i32 0, align 4
@BPF_H = common dso_local global i32 0, align 4
@BPF_B = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.block* (i32*, i64, i32)* @gen_dnhostop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.block* @gen_dnhostop(i32* %0, i64 %1, i32 %2) #0 {
  %4 = alloca %struct.block*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.block*, align 8
  %9 = alloca %struct.block*, align 8
  %10 = alloca %struct.block*, align 8
  %11 = alloca %struct.block*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store i64 %1, i64* %6, align 8
  store i32 %2, i32* %7, align 4
  %14 = load i32, i32* %7, align 4
  switch i32 %14, label %42 [
    i32 131, label %15
    i32 128, label %16
    i32 133, label %17
    i32 129, label %28
    i32 132, label %28
    i32 130, label %39
  ]

15:                                               ; preds = %3
  store i32 1, i32* %13, align 4
  store i32 7, i32* %12, align 4
  br label %44

16:                                               ; preds = %3
  store i32 3, i32* %13, align 4
  store i32 15, i32* %12, align 4
  br label %44

17:                                               ; preds = %3
  %18 = load i32*, i32** %5, align 8
  %19 = load i64, i64* %6, align 8
  %20 = call %struct.block* @gen_dnhostop(i32* %18, i64 %19, i32 128)
  store %struct.block* %20, %struct.block** %8, align 8
  %21 = load i32*, i32** %5, align 8
  %22 = load i64, i64* %6, align 8
  %23 = call %struct.block* @gen_dnhostop(i32* %21, i64 %22, i32 131)
  store %struct.block* %23, %struct.block** %9, align 8
  %24 = load %struct.block*, %struct.block** %8, align 8
  %25 = load %struct.block*, %struct.block** %9, align 8
  %26 = call i32 @gen_and(%struct.block* %24, %struct.block* %25)
  %27 = load %struct.block*, %struct.block** %9, align 8
  store %struct.block* %27, %struct.block** %4, align 8
  br label %137

28:                                               ; preds = %3, %3
  %29 = load i32*, i32** %5, align 8
  %30 = load i64, i64* %6, align 8
  %31 = call %struct.block* @gen_dnhostop(i32* %29, i64 %30, i32 128)
  store %struct.block* %31, %struct.block** %8, align 8
  %32 = load i32*, i32** %5, align 8
  %33 = load i64, i64* %6, align 8
  %34 = call %struct.block* @gen_dnhostop(i32* %32, i64 %33, i32 131)
  store %struct.block* %34, %struct.block** %9, align 8
  %35 = load %struct.block*, %struct.block** %8, align 8
  %36 = load %struct.block*, %struct.block** %9, align 8
  %37 = call i32 @gen_or(%struct.block* %35, %struct.block* %36)
  %38 = load %struct.block*, %struct.block** %9, align 8
  store %struct.block* %38, %struct.block** %4, align 8
  br label %137

39:                                               ; preds = %3
  %40 = load i32*, i32** %5, align 8
  %41 = call i32 @bpf_error(i32* %40, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0))
  br label %42

42:                                               ; preds = %3, %39
  %43 = call i32 (...) @abort() #3
  unreachable

44:                                               ; preds = %16, %15
  %45 = load i32*, i32** %5, align 8
  %46 = load i32, i32* @ETHERTYPE_DN, align 4
  %47 = call %struct.block* @gen_linktype(i32* %45, i32 %46)
  store %struct.block* %47, %struct.block** %8, align 8
  %48 = load i32*, i32** %5, align 8
  %49 = load i32, i32* @OR_LINKPL, align 4
  %50 = load i32, i32* @BPF_H, align 4
  %51 = call i64 @ntohs(i32 1665)
  %52 = trunc i64 %51 to i32
  %53 = call i64 @ntohs(i32 2047)
  %54 = trunc i64 %53 to i32
  %55 = call %struct.block* @gen_mcmp(i32* %48, i32 %49, i32 2, i32 %50, i32 %52, i32 %54)
  store %struct.block* %55, %struct.block** %11, align 8
  %56 = load i32*, i32** %5, align 8
  %57 = load i32, i32* @OR_LINKPL, align 4
  %58 = load i32, i32* %12, align 4
  %59 = add nsw i32 3, %58
  %60 = load i32, i32* @BPF_H, align 4
  %61 = load i64, i64* %6, align 8
  %62 = trunc i64 %61 to i32
  %63 = call i64 @ntohs(i32 %62)
  %64 = trunc i64 %63 to i32
  %65 = call %struct.block* @gen_cmp(i32* %56, i32 %57, i32 %59, i32 %60, i32 %64)
  store %struct.block* %65, %struct.block** %9, align 8
  %66 = load %struct.block*, %struct.block** %11, align 8
  %67 = load %struct.block*, %struct.block** %9, align 8
  %68 = call i32 @gen_and(%struct.block* %66, %struct.block* %67)
  %69 = load i32*, i32** %5, align 8
  %70 = load i32, i32* @OR_LINKPL, align 4
  %71 = load i32, i32* @BPF_B, align 4
  %72 = call %struct.block* @gen_mcmp(i32* %69, i32 %70, i32 2, i32 %71, i32 6, i32 7)
  store %struct.block* %72, %struct.block** %11, align 8
  %73 = load i32*, i32** %5, align 8
  %74 = load i32, i32* @OR_LINKPL, align 4
  %75 = load i32, i32* %12, align 4
  %76 = add nsw i32 2, %75
  %77 = load i32, i32* @BPF_H, align 4
  %78 = load i64, i64* %6, align 8
  %79 = trunc i64 %78 to i32
  %80 = call i64 @ntohs(i32 %79)
  %81 = trunc i64 %80 to i32
  %82 = call %struct.block* @gen_cmp(i32* %73, i32 %74, i32 %76, i32 %77, i32 %81)
  store %struct.block* %82, %struct.block** %10, align 8
  %83 = load %struct.block*, %struct.block** %11, align 8
  %84 = load %struct.block*, %struct.block** %10, align 8
  %85 = call i32 @gen_and(%struct.block* %83, %struct.block* %84)
  %86 = load %struct.block*, %struct.block** %10, align 8
  %87 = load %struct.block*, %struct.block** %9, align 8
  %88 = call i32 @gen_or(%struct.block* %86, %struct.block* %87)
  %89 = load i32*, i32** %5, align 8
  %90 = load i32, i32* @OR_LINKPL, align 4
  %91 = load i32, i32* @BPF_H, align 4
  %92 = call i64 @ntohs(i32 641)
  %93 = trunc i64 %92 to i32
  %94 = call i64 @ntohs(i32 2047)
  %95 = trunc i64 %94 to i32
  %96 = call %struct.block* @gen_mcmp(i32* %89, i32 %90, i32 2, i32 %91, i32 %93, i32 %95)
  store %struct.block* %96, %struct.block** %11, align 8
  %97 = load i32*, i32** %5, align 8
  %98 = load i32, i32* @OR_LINKPL, align 4
  %99 = load i32, i32* %13, align 4
  %100 = add nsw i32 3, %99
  %101 = load i32, i32* @BPF_H, align 4
  %102 = load i64, i64* %6, align 8
  %103 = trunc i64 %102 to i32
  %104 = call i64 @ntohs(i32 %103)
  %105 = trunc i64 %104 to i32
  %106 = call %struct.block* @gen_cmp(i32* %97, i32 %98, i32 %100, i32 %101, i32 %105)
  store %struct.block* %106, %struct.block** %10, align 8
  %107 = load %struct.block*, %struct.block** %11, align 8
  %108 = load %struct.block*, %struct.block** %10, align 8
  %109 = call i32 @gen_and(%struct.block* %107, %struct.block* %108)
  %110 = load %struct.block*, %struct.block** %10, align 8
  %111 = load %struct.block*, %struct.block** %9, align 8
  %112 = call i32 @gen_or(%struct.block* %110, %struct.block* %111)
  %113 = load i32*, i32** %5, align 8
  %114 = load i32, i32* @OR_LINKPL, align 4
  %115 = load i32, i32* @BPF_B, align 4
  %116 = call %struct.block* @gen_mcmp(i32* %113, i32 %114, i32 2, i32 %115, i32 2, i32 7)
  store %struct.block* %116, %struct.block** %11, align 8
  %117 = load i32*, i32** %5, align 8
  %118 = load i32, i32* @OR_LINKPL, align 4
  %119 = load i32, i32* %13, align 4
  %120 = add nsw i32 2, %119
  %121 = load i32, i32* @BPF_H, align 4
  %122 = load i64, i64* %6, align 8
  %123 = trunc i64 %122 to i32
  %124 = call i64 @ntohs(i32 %123)
  %125 = trunc i64 %124 to i32
  %126 = call %struct.block* @gen_cmp(i32* %117, i32 %118, i32 %120, i32 %121, i32 %125)
  store %struct.block* %126, %struct.block** %10, align 8
  %127 = load %struct.block*, %struct.block** %11, align 8
  %128 = load %struct.block*, %struct.block** %10, align 8
  %129 = call i32 @gen_and(%struct.block* %127, %struct.block* %128)
  %130 = load %struct.block*, %struct.block** %10, align 8
  %131 = load %struct.block*, %struct.block** %9, align 8
  %132 = call i32 @gen_or(%struct.block* %130, %struct.block* %131)
  %133 = load %struct.block*, %struct.block** %8, align 8
  %134 = load %struct.block*, %struct.block** %9, align 8
  %135 = call i32 @gen_and(%struct.block* %133, %struct.block* %134)
  %136 = load %struct.block*, %struct.block** %9, align 8
  store %struct.block* %136, %struct.block** %4, align 8
  br label %137

137:                                              ; preds = %44, %28, %17
  %138 = load %struct.block*, %struct.block** %4, align 8
  ret %struct.block* %138
}

declare dso_local i32 @gen_and(%struct.block*, %struct.block*) #1

declare dso_local i32 @gen_or(%struct.block*, %struct.block*) #1

declare dso_local i32 @bpf_error(i32*, i8*) #1

; Function Attrs: noreturn
declare dso_local i32 @abort(...) #2

declare dso_local %struct.block* @gen_linktype(i32*, i32) #1

declare dso_local %struct.block* @gen_mcmp(i32*, i32, i32, i32, i32, i32) #1

declare dso_local i64 @ntohs(i32) #1

declare dso_local %struct.block* @gen_cmp(i32*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
