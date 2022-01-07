; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/x86emu/extr_x86emu.c_x86emuOp_opcFF_word_RM.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/x86emu/extr_x86emu.c_x86emuOp_opcFF_word_RM.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.x86emu = type { i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i8*, i8* }

@SYSMODE_PREFIX_DATA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.x86emu*)* @x86emuOp_opcFF_word_RM to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @x86emuOp_opcFF_word_RM(%struct.x86emu* %0) #0 {
  %2 = alloca %struct.x86emu*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  store %struct.x86emu* %0, %struct.x86emu** %2, align 8
  store i32 0, i32* %3, align 4
  %6 = load %struct.x86emu*, %struct.x86emu** %2, align 8
  %7 = call i32 @fetch_decode_modrm(%struct.x86emu* %6)
  %8 = load %struct.x86emu*, %struct.x86emu** %2, align 8
  %9 = getelementptr inbounds %struct.x86emu, %struct.x86emu* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = icmp eq i32 %10, 3
  br i1 %11, label %12, label %22

12:                                               ; preds = %1
  %13 = load %struct.x86emu*, %struct.x86emu** %2, align 8
  %14 = getelementptr inbounds %struct.x86emu, %struct.x86emu* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = icmp eq i32 %15, 3
  br i1 %16, label %27, label %17

17:                                               ; preds = %12
  %18 = load %struct.x86emu*, %struct.x86emu** %2, align 8
  %19 = getelementptr inbounds %struct.x86emu, %struct.x86emu* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = icmp eq i32 %20, 5
  br i1 %21, label %27, label %22

22:                                               ; preds = %17, %1
  %23 = load %struct.x86emu*, %struct.x86emu** %2, align 8
  %24 = getelementptr inbounds %struct.x86emu, %struct.x86emu* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = icmp eq i32 %25, 7
  br i1 %26, label %27, label %30

27:                                               ; preds = %22, %17, %12
  %28 = load %struct.x86emu*, %struct.x86emu** %2, align 8
  %29 = call i32 @x86emu_halt_sys(%struct.x86emu* %28)
  br label %30

30:                                               ; preds = %27, %22
  %31 = load %struct.x86emu*, %struct.x86emu** %2, align 8
  %32 = getelementptr inbounds %struct.x86emu, %struct.x86emu* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %45, label %35

35:                                               ; preds = %30
  %36 = load %struct.x86emu*, %struct.x86emu** %2, align 8
  %37 = getelementptr inbounds %struct.x86emu, %struct.x86emu* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = icmp eq i32 %38, 1
  br i1 %39, label %45, label %40

40:                                               ; preds = %35
  %41 = load %struct.x86emu*, %struct.x86emu** %2, align 8
  %42 = getelementptr inbounds %struct.x86emu, %struct.x86emu* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = icmp eq i32 %43, 6
  br i1 %44, label %45, label %60

45:                                               ; preds = %40, %35, %30
  %46 = load %struct.x86emu*, %struct.x86emu** %2, align 8
  %47 = getelementptr inbounds %struct.x86emu, %struct.x86emu* %46, i32 0, i32 2
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = load i32, i32* @SYSMODE_PREFIX_DATA, align 4
  %51 = and i32 %49, %50
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %56

53:                                               ; preds = %45
  %54 = load %struct.x86emu*, %struct.x86emu** %2, align 8
  %55 = call i32 @x86emuOp32_opcFF_word_RM(%struct.x86emu* %54)
  br label %59

56:                                               ; preds = %45
  %57 = load %struct.x86emu*, %struct.x86emu** %2, align 8
  %58 = call i32 @x86emuOp16_opcFF_word_RM(%struct.x86emu* %57)
  br label %59

59:                                               ; preds = %56, %53
  br label %137

60:                                               ; preds = %40
  %61 = load %struct.x86emu*, %struct.x86emu** %2, align 8
  %62 = getelementptr inbounds %struct.x86emu, %struct.x86emu* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = icmp ne i32 %63, 3
  br i1 %64, label %65, label %113

65:                                               ; preds = %60
  %66 = load %struct.x86emu*, %struct.x86emu** %2, align 8
  %67 = call i32 @decode_rl_address(%struct.x86emu* %66)
  store i32 %67, i32* %3, align 4
  %68 = load %struct.x86emu*, %struct.x86emu** %2, align 8
  %69 = load i32, i32* %3, align 4
  %70 = call i8* @fetch_data_word(%struct.x86emu* %68, i32 %69)
  store i8* %70, i8** %4, align 8
  %71 = load %struct.x86emu*, %struct.x86emu** %2, align 8
  %72 = getelementptr inbounds %struct.x86emu, %struct.x86emu* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 4
  switch i32 %73, label %112 [
    i32 3, label %74
    i32 5, label %99
  ]

74:                                               ; preds = %65
  %75 = load %struct.x86emu*, %struct.x86emu** %2, align 8
  %76 = load i32, i32* %3, align 4
  %77 = add nsw i32 %76, 2
  %78 = call i8* @fetch_data_word(%struct.x86emu* %75, i32 %77)
  store i8* %78, i8** %5, align 8
  %79 = load %struct.x86emu*, %struct.x86emu** %2, align 8
  %80 = load %struct.x86emu*, %struct.x86emu** %2, align 8
  %81 = getelementptr inbounds %struct.x86emu, %struct.x86emu* %80, i32 0, i32 2
  %82 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %81, i32 0, i32 2
  %83 = load i8*, i8** %82, align 8
  %84 = call i32 @push_word(%struct.x86emu* %79, i8* %83)
  %85 = load i8*, i8** %5, align 8
  %86 = load %struct.x86emu*, %struct.x86emu** %2, align 8
  %87 = getelementptr inbounds %struct.x86emu, %struct.x86emu* %86, i32 0, i32 2
  %88 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %87, i32 0, i32 2
  store i8* %85, i8** %88, align 8
  %89 = load %struct.x86emu*, %struct.x86emu** %2, align 8
  %90 = load %struct.x86emu*, %struct.x86emu** %2, align 8
  %91 = getelementptr inbounds %struct.x86emu, %struct.x86emu* %90, i32 0, i32 2
  %92 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %91, i32 0, i32 1
  %93 = load i8*, i8** %92, align 8
  %94 = call i32 @push_word(%struct.x86emu* %89, i8* %93)
  %95 = load i8*, i8** %4, align 8
  %96 = load %struct.x86emu*, %struct.x86emu** %2, align 8
  %97 = getelementptr inbounds %struct.x86emu, %struct.x86emu* %96, i32 0, i32 2
  %98 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %97, i32 0, i32 1
  store i8* %95, i8** %98, align 8
  br label %112

99:                                               ; preds = %65
  %100 = load %struct.x86emu*, %struct.x86emu** %2, align 8
  %101 = load i32, i32* %3, align 4
  %102 = add nsw i32 %101, 2
  %103 = call i8* @fetch_data_word(%struct.x86emu* %100, i32 %102)
  store i8* %103, i8** %5, align 8
  %104 = load i8*, i8** %4, align 8
  %105 = load %struct.x86emu*, %struct.x86emu** %2, align 8
  %106 = getelementptr inbounds %struct.x86emu, %struct.x86emu* %105, i32 0, i32 2
  %107 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %106, i32 0, i32 1
  store i8* %104, i8** %107, align 8
  %108 = load i8*, i8** %5, align 8
  %109 = load %struct.x86emu*, %struct.x86emu** %2, align 8
  %110 = getelementptr inbounds %struct.x86emu, %struct.x86emu* %109, i32 0, i32 2
  %111 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %110, i32 0, i32 2
  store i8* %108, i8** %111, align 8
  br label %112

112:                                              ; preds = %65, %99, %74
  br label %117

113:                                              ; preds = %60
  %114 = load %struct.x86emu*, %struct.x86emu** %2, align 8
  %115 = call i8** @decode_rl_word_register(%struct.x86emu* %114)
  %116 = load i8*, i8** %115, align 8
  store i8* %116, i8** %4, align 8
  br label %117

117:                                              ; preds = %113, %112
  %118 = load %struct.x86emu*, %struct.x86emu** %2, align 8
  %119 = getelementptr inbounds %struct.x86emu, %struct.x86emu* %118, i32 0, i32 1
  %120 = load i32, i32* %119, align 4
  switch i32 %120, label %137 [
    i32 2, label %121
    i32 4, label %132
  ]

121:                                              ; preds = %117
  %122 = load %struct.x86emu*, %struct.x86emu** %2, align 8
  %123 = load %struct.x86emu*, %struct.x86emu** %2, align 8
  %124 = getelementptr inbounds %struct.x86emu, %struct.x86emu* %123, i32 0, i32 2
  %125 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %124, i32 0, i32 1
  %126 = load i8*, i8** %125, align 8
  %127 = call i32 @push_word(%struct.x86emu* %122, i8* %126)
  %128 = load i8*, i8** %4, align 8
  %129 = load %struct.x86emu*, %struct.x86emu** %2, align 8
  %130 = getelementptr inbounds %struct.x86emu, %struct.x86emu* %129, i32 0, i32 2
  %131 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %130, i32 0, i32 1
  store i8* %128, i8** %131, align 8
  br label %137

132:                                              ; preds = %117
  %133 = load i8*, i8** %4, align 8
  %134 = load %struct.x86emu*, %struct.x86emu** %2, align 8
  %135 = getelementptr inbounds %struct.x86emu, %struct.x86emu* %134, i32 0, i32 2
  %136 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %135, i32 0, i32 1
  store i8* %133, i8** %136, align 8
  br label %137

137:                                              ; preds = %59, %117, %132, %121
  ret void
}

declare dso_local i32 @fetch_decode_modrm(%struct.x86emu*) #1

declare dso_local i32 @x86emu_halt_sys(%struct.x86emu*) #1

declare dso_local i32 @x86emuOp32_opcFF_word_RM(%struct.x86emu*) #1

declare dso_local i32 @x86emuOp16_opcFF_word_RM(%struct.x86emu*) #1

declare dso_local i32 @decode_rl_address(%struct.x86emu*) #1

declare dso_local i8* @fetch_data_word(%struct.x86emu*, i32) #1

declare dso_local i32 @push_word(%struct.x86emu*, i8*) #1

declare dso_local i8** @decode_rl_word_register(%struct.x86emu*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
