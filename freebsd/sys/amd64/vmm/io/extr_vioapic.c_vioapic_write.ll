; ModuleID = '/home/carl/AnghaBench/freebsd/sys/amd64/vmm/io/extr_vioapic.c_vioapic_write.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/amd64/vmm/io/extr_vioapic.c_vioapic_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vioapic = type { i32, %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32, i32 }

@APIC_ID_MASK = common dso_local global i32 0, align 4
@IOAPIC_REDTBL = common dso_local global i32 0, align 4
@REDIR_ENTRIES = common dso_local global i32 0, align 4
@RTBL_RO_BITS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"ioapic pin%d: redir table entry %#lx\00", align 1
@IOART_INTMASK = common dso_local global i32 0, align 4
@IOART_INTPOL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [55 x i8] c"ioapic pin%d: recalculate vlapic trigger-mode register\00", align 1
@vioapic_update_tmr = common dso_local global i32 0, align 4
@IOART_INTMCLR = common dso_local global i32 0, align 4
@IOART_REM_IRR = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [46 x i8] c"ioapic pin%d: asserted at rtbl write, acnt %d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.vioapic*, i32, i32, i32)* @vioapic_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vioapic_write(%struct.vioapic* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.vioapic*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.vioapic* %0, %struct.vioapic** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %17 = load i32, i32* %7, align 4
  %18 = and i32 %17, 255
  store i32 %18, i32* %13, align 4
  %19 = load i32, i32* %13, align 4
  switch i32 %19, label %27 [
    i32 129, label %20
    i32 128, label %26
    i32 130, label %26
  ]

20:                                               ; preds = %4
  %21 = load i32, i32* %8, align 4
  %22 = load i32, i32* @APIC_ID_MASK, align 4
  %23 = and i32 %21, %22
  %24 = load %struct.vioapic*, %struct.vioapic** %5, align 8
  %25 = getelementptr inbounds %struct.vioapic, %struct.vioapic* %24, i32 0, i32 0
  store i32 %23, i32* %25, align 8
  br label %28

26:                                               ; preds = %4, %4
  br label %28

27:                                               ; preds = %4
  br label %28

28:                                               ; preds = %27, %26, %20
  %29 = load i32, i32* %13, align 4
  %30 = load i32, i32* @IOAPIC_REDTBL, align 4
  %31 = icmp sge i32 %29, %30
  br i1 %31, label %32, label %189

32:                                               ; preds = %28
  %33 = load i32, i32* %13, align 4
  %34 = load i32, i32* @IOAPIC_REDTBL, align 4
  %35 = load i32, i32* @REDIR_ENTRIES, align 4
  %36 = mul nsw i32 %35, 2
  %37 = add nsw i32 %34, %36
  %38 = icmp slt i32 %33, %37
  br i1 %38, label %39, label %189

39:                                               ; preds = %32
  %40 = load i32, i32* %13, align 4
  %41 = load i32, i32* @IOAPIC_REDTBL, align 4
  %42 = sub nsw i32 %40, %41
  %43 = sdiv i32 %42, 2
  store i32 %43, i32* %14, align 4
  %44 = load i32, i32* %13, align 4
  %45 = load i32, i32* @IOAPIC_REDTBL, align 4
  %46 = sub nsw i32 %44, %45
  %47 = srem i32 %46, 2
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %50

49:                                               ; preds = %39
  store i32 32, i32* %15, align 4
  br label %51

50:                                               ; preds = %39
  store i32 0, i32* %15, align 4
  br label %51

51:                                               ; preds = %50, %49
  %52 = load %struct.vioapic*, %struct.vioapic** %5, align 8
  %53 = getelementptr inbounds %struct.vioapic, %struct.vioapic* %52, i32 0, i32 1
  %54 = load %struct.TYPE_2__*, %struct.TYPE_2__** %53, align 8
  %55 = load i32, i32* %14, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %54, i64 %56
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  store i32 %59, i32* %11, align 4
  %60 = load i32, i32* %8, align 4
  %61 = load i32, i32* %15, align 4
  %62 = shl i32 %60, %61
  store i32 %62, i32* %9, align 4
  %63 = load i32, i32* %15, align 4
  %64 = shl i32 -1, %63
  store i32 %64, i32* %10, align 4
  %65 = load i32, i32* %10, align 4
  %66 = xor i32 %65, -1
  %67 = load i32, i32* @RTBL_RO_BITS, align 4
  %68 = or i32 %66, %67
  %69 = load %struct.vioapic*, %struct.vioapic** %5, align 8
  %70 = getelementptr inbounds %struct.vioapic, %struct.vioapic* %69, i32 0, i32 1
  %71 = load %struct.TYPE_2__*, %struct.TYPE_2__** %70, align 8
  %72 = load i32, i32* %14, align 4
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %71, i64 %73
  %75 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = and i32 %76, %68
  store i32 %77, i32* %75, align 4
  %78 = load i32, i32* %9, align 4
  %79 = load i32, i32* @RTBL_RO_BITS, align 4
  %80 = xor i32 %79, -1
  %81 = and i32 %78, %80
  %82 = load %struct.vioapic*, %struct.vioapic** %5, align 8
  %83 = getelementptr inbounds %struct.vioapic, %struct.vioapic* %82, i32 0, i32 1
  %84 = load %struct.TYPE_2__*, %struct.TYPE_2__** %83, align 8
  %85 = load i32, i32* %14, align 4
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %84, i64 %86
  %88 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 4
  %90 = or i32 %89, %81
  store i32 %90, i32* %88, align 4
  %91 = load %struct.vioapic*, %struct.vioapic** %5, align 8
  %92 = load i32, i32* %14, align 4
  %93 = load %struct.vioapic*, %struct.vioapic** %5, align 8
  %94 = getelementptr inbounds %struct.vioapic, %struct.vioapic* %93, i32 0, i32 1
  %95 = load %struct.TYPE_2__*, %struct.TYPE_2__** %94, align 8
  %96 = load i32, i32* %14, align 4
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %95, i64 %97
  %99 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 4
  %101 = call i32 @VIOAPIC_CTR2(%struct.vioapic* %91, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i32 %92, i32 %100)
  %102 = load i32, i32* %11, align 4
  %103 = load %struct.vioapic*, %struct.vioapic** %5, align 8
  %104 = getelementptr inbounds %struct.vioapic, %struct.vioapic* %103, i32 0, i32 1
  %105 = load %struct.TYPE_2__*, %struct.TYPE_2__** %104, align 8
  %106 = load i32, i32* %14, align 4
  %107 = sext i32 %106 to i64
  %108 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %105, i64 %107
  %109 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 4
  %111 = xor i32 %102, %110
  store i32 %111, i32* %12, align 4
  %112 = load i32, i32* %12, align 4
  %113 = load i32, i32* @IOART_INTMASK, align 4
  %114 = load i32, i32* @IOART_INTPOL, align 4
  %115 = or i32 %113, %114
  %116 = xor i32 %115, -1
  %117 = and i32 %112, %116
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %119, label %138

119:                                              ; preds = %51
  %120 = load %struct.vioapic*, %struct.vioapic** %5, align 8
  %121 = load i32, i32* %14, align 4
  %122 = call i32 @VIOAPIC_CTR1(%struct.vioapic* %120, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.1, i64 0, i64 0), i32 %121)
  %123 = load %struct.vioapic*, %struct.vioapic** %5, align 8
  %124 = call i32 @VIOAPIC_UNLOCK(%struct.vioapic* %123)
  %125 = load %struct.vioapic*, %struct.vioapic** %5, align 8
  %126 = getelementptr inbounds %struct.vioapic, %struct.vioapic* %125, i32 0, i32 2
  %127 = load i32, i32* %126, align 8
  %128 = call i32 @vm_active_cpus(i32 %127)
  store i32 %128, i32* %16, align 4
  %129 = load %struct.vioapic*, %struct.vioapic** %5, align 8
  %130 = getelementptr inbounds %struct.vioapic, %struct.vioapic* %129, i32 0, i32 2
  %131 = load i32, i32* %130, align 8
  %132 = load i32, i32* %6, align 4
  %133 = load i32, i32* %16, align 4
  %134 = load i32, i32* @vioapic_update_tmr, align 4
  %135 = call i32 @vm_smp_rendezvous(i32 %131, i32 %132, i32 %133, i32 %134, i32* null)
  %136 = load %struct.vioapic*, %struct.vioapic** %5, align 8
  %137 = call i32 @VIOAPIC_LOCK(%struct.vioapic* %136)
  br label %138

138:                                              ; preds = %119, %51
  %139 = load %struct.vioapic*, %struct.vioapic** %5, align 8
  %140 = getelementptr inbounds %struct.vioapic, %struct.vioapic* %139, i32 0, i32 1
  %141 = load %struct.TYPE_2__*, %struct.TYPE_2__** %140, align 8
  %142 = load i32, i32* %14, align 4
  %143 = sext i32 %142 to i64
  %144 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %141, i64 %143
  %145 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %144, i32 0, i32 0
  %146 = load i32, i32* %145, align 4
  %147 = load i32, i32* @IOART_INTMASK, align 4
  %148 = and i32 %146, %147
  %149 = load i32, i32* @IOART_INTMCLR, align 4
  %150 = icmp eq i32 %148, %149
  br i1 %150, label %151, label %188

151:                                              ; preds = %138
  %152 = load %struct.vioapic*, %struct.vioapic** %5, align 8
  %153 = getelementptr inbounds %struct.vioapic, %struct.vioapic* %152, i32 0, i32 1
  %154 = load %struct.TYPE_2__*, %struct.TYPE_2__** %153, align 8
  %155 = load i32, i32* %14, align 4
  %156 = sext i32 %155 to i64
  %157 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %154, i64 %156
  %158 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %157, i32 0, i32 0
  %159 = load i32, i32* %158, align 4
  %160 = load i32, i32* @IOART_REM_IRR, align 4
  %161 = and i32 %159, %160
  %162 = icmp eq i32 %161, 0
  br i1 %162, label %163, label %188

163:                                              ; preds = %151
  %164 = load %struct.vioapic*, %struct.vioapic** %5, align 8
  %165 = getelementptr inbounds %struct.vioapic, %struct.vioapic* %164, i32 0, i32 1
  %166 = load %struct.TYPE_2__*, %struct.TYPE_2__** %165, align 8
  %167 = load i32, i32* %14, align 4
  %168 = sext i32 %167 to i64
  %169 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %166, i64 %168
  %170 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %169, i32 0, i32 1
  %171 = load i32, i32* %170, align 4
  %172 = icmp sgt i32 %171, 0
  br i1 %172, label %173, label %188

173:                                              ; preds = %163
  %174 = load %struct.vioapic*, %struct.vioapic** %5, align 8
  %175 = load i32, i32* %14, align 4
  %176 = load %struct.vioapic*, %struct.vioapic** %5, align 8
  %177 = getelementptr inbounds %struct.vioapic, %struct.vioapic* %176, i32 0, i32 1
  %178 = load %struct.TYPE_2__*, %struct.TYPE_2__** %177, align 8
  %179 = load i32, i32* %14, align 4
  %180 = sext i32 %179 to i64
  %181 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %178, i64 %180
  %182 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %181, i32 0, i32 1
  %183 = load i32, i32* %182, align 4
  %184 = call i32 @VIOAPIC_CTR2(%struct.vioapic* %174, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.2, i64 0, i64 0), i32 %175, i32 %183)
  %185 = load %struct.vioapic*, %struct.vioapic** %5, align 8
  %186 = load i32, i32* %14, align 4
  %187 = call i32 @vioapic_send_intr(%struct.vioapic* %185, i32 %186)
  br label %188

188:                                              ; preds = %173, %163, %151, %138
  br label %189

189:                                              ; preds = %188, %32, %28
  ret void
}

declare dso_local i32 @VIOAPIC_CTR2(%struct.vioapic*, i8*, i32, i32) #1

declare dso_local i32 @VIOAPIC_CTR1(%struct.vioapic*, i8*, i32) #1

declare dso_local i32 @VIOAPIC_UNLOCK(%struct.vioapic*) #1

declare dso_local i32 @vm_active_cpus(i32) #1

declare dso_local i32 @vm_smp_rendezvous(i32, i32, i32, i32, i32*) #1

declare dso_local i32 @VIOAPIC_LOCK(%struct.vioapic*) #1

declare dso_local i32 @vioapic_send_intr(%struct.vioapic*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
