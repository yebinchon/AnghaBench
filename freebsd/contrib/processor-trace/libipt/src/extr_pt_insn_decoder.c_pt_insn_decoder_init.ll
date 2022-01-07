; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/processor-trace/libipt/src/extr_pt_insn_decoder.c_pt_insn_decoder_init.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/processor-trace/libipt/src/extr_pt_insn_decoder.c_pt_insn_decoder_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pt_insn_decoder = type { i32, i32, i32*, i32, i32 }
%struct.pt_config = type { i32 }

@pte_internal = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pt_insn_decoder_init(%struct.pt_insn_decoder* %0, %struct.pt_config* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.pt_insn_decoder*, align 8
  %5 = alloca %struct.pt_config*, align 8
  %6 = alloca %struct.pt_config, align 4
  %7 = alloca i32, align 4
  store %struct.pt_insn_decoder* %0, %struct.pt_insn_decoder** %4, align 8
  store %struct.pt_config* %1, %struct.pt_config** %5, align 8
  %8 = load %struct.pt_insn_decoder*, %struct.pt_insn_decoder** %4, align 8
  %9 = icmp ne %struct.pt_insn_decoder* %8, null
  br i1 %9, label %13, label %10

10:                                               ; preds = %2
  %11 = load i32, i32* @pte_internal, align 4
  %12 = sub nsw i32 0, %11
  store i32 %12, i32* %3, align 4
  br label %59

13:                                               ; preds = %2
  %14 = load %struct.pt_config*, %struct.pt_config** %5, align 8
  %15 = call i32 @pt_config_from_user(%struct.pt_config* %6, %struct.pt_config* %14)
  store i32 %15, i32* %7, align 4
  %16 = load i32, i32* %7, align 4
  %17 = icmp slt i32 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %13
  %19 = load i32, i32* %7, align 4
  store i32 %19, i32* %3, align 4
  br label %59

20:                                               ; preds = %13
  %21 = getelementptr inbounds %struct.pt_config, %struct.pt_config* %6, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.pt_insn_decoder*, %struct.pt_insn_decoder** %4, align 8
  %24 = getelementptr inbounds %struct.pt_insn_decoder, %struct.pt_insn_decoder* %23, i32 0, i32 4
  store i32 %22, i32* %24, align 4
  %25 = getelementptr inbounds %struct.pt_config, %struct.pt_config* %6, i32 0, i32 0
  %26 = load %struct.pt_insn_decoder*, %struct.pt_insn_decoder** %4, align 8
  %27 = getelementptr inbounds %struct.pt_insn_decoder, %struct.pt_insn_decoder* %26, i32 0, i32 4
  %28 = call i32 @pt_insn_init_qry_flags(i32* %25, i32* %27)
  store i32 %28, i32* %7, align 4
  %29 = load i32, i32* %7, align 4
  %30 = icmp slt i32 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %20
  %32 = load i32, i32* %7, align 4
  store i32 %32, i32* %3, align 4
  br label %59

33:                                               ; preds = %20
  %34 = load %struct.pt_insn_decoder*, %struct.pt_insn_decoder** %4, align 8
  %35 = getelementptr inbounds %struct.pt_insn_decoder, %struct.pt_insn_decoder* %34, i32 0, i32 3
  %36 = call i32 @pt_qry_decoder_init(i32* %35, %struct.pt_config* %6)
  store i32 %36, i32* %7, align 4
  %37 = load i32, i32* %7, align 4
  %38 = icmp slt i32 %37, 0
  br i1 %38, label %39, label %41

39:                                               ; preds = %33
  %40 = load i32, i32* %7, align 4
  store i32 %40, i32* %3, align 4
  br label %59

41:                                               ; preds = %33
  %42 = load %struct.pt_insn_decoder*, %struct.pt_insn_decoder** %4, align 8
  %43 = getelementptr inbounds %struct.pt_insn_decoder, %struct.pt_insn_decoder* %42, i32 0, i32 1
  %44 = call i32 @pt_image_init(i32* %43, i32* null)
  %45 = load %struct.pt_insn_decoder*, %struct.pt_insn_decoder** %4, align 8
  %46 = getelementptr inbounds %struct.pt_insn_decoder, %struct.pt_insn_decoder* %45, i32 0, i32 1
  %47 = load %struct.pt_insn_decoder*, %struct.pt_insn_decoder** %4, align 8
  %48 = getelementptr inbounds %struct.pt_insn_decoder, %struct.pt_insn_decoder* %47, i32 0, i32 2
  store i32* %46, i32** %48, align 8
  %49 = load %struct.pt_insn_decoder*, %struct.pt_insn_decoder** %4, align 8
  %50 = getelementptr inbounds %struct.pt_insn_decoder, %struct.pt_insn_decoder* %49, i32 0, i32 0
  %51 = call i32 @pt_msec_cache_init(i32* %50)
  store i32 %51, i32* %7, align 4
  %52 = load i32, i32* %7, align 4
  %53 = icmp slt i32 %52, 0
  br i1 %53, label %54, label %56

54:                                               ; preds = %41
  %55 = load i32, i32* %7, align 4
  store i32 %55, i32* %3, align 4
  br label %59

56:                                               ; preds = %41
  %57 = load %struct.pt_insn_decoder*, %struct.pt_insn_decoder** %4, align 8
  %58 = call i32 @pt_insn_reset(%struct.pt_insn_decoder* %57)
  store i32 0, i32* %3, align 4
  br label %59

59:                                               ; preds = %56, %54, %39, %31, %18, %10
  %60 = load i32, i32* %3, align 4
  ret i32 %60
}

declare dso_local i32 @pt_config_from_user(%struct.pt_config*, %struct.pt_config*) #1

declare dso_local i32 @pt_insn_init_qry_flags(i32*, i32*) #1

declare dso_local i32 @pt_qry_decoder_init(i32*, %struct.pt_config*) #1

declare dso_local i32 @pt_image_init(i32*, i32*) #1

declare dso_local i32 @pt_msec_cache_init(i32*) #1

declare dso_local i32 @pt_insn_reset(%struct.pt_insn_decoder*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
