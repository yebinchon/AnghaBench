; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_ser-go32.c_dos_open.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_ser-go32.c_dos_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dos_ttystate = type { i32, i32, i64, i64, i64, i64, %struct.TYPE_2__*, i32, i32 }
%struct.TYPE_2__ = type { %struct.dos_ttystate* }
%struct.serial = type { i32 }

@.str = private unnamed_addr constant [6 x i8] c"/dev/\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"\\dev\\\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"com\00", align 1
@ENOENT = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@ports = common dso_local global %struct.dos_ttystate* null, align 8
@com_cfcr = common dso_local global i32 0, align 4
@com_iir = common dso_local global i32 0, align 4
@com_data = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@com_ier = common dso_local global i32 0, align 4
@com_fifo = common dso_local global i32 0, align 4
@FIFO_ENABLE = common dso_local global i32 0, align 4
@FIFO_RCV_RST = common dso_local global i32 0, align 4
@FIFO_XMT_RST = common dso_local global i32 0, align 4
@FIFO_TRIGGER = common dso_local global i32 0, align 4
@IIR_FIFO_MASK = common dso_local global i32 0, align 4
@com_lsr = common dso_local global i32 0, align 4
@com_msr = common dso_local global i32 0, align 4
@com_mcr = common dso_local global i32 0, align 4
@MCR_IENABLE = common dso_local global i32 0, align 4
@CFCR_DLAB = common dso_local global i32 0, align 4
@com_dlbl = common dso_local global i32 0, align 4
@com_dlbh = common dso_local global i32 0, align 4
@CFCR_8BITS = common dso_local global i32 0, align 4
@IER_ETXRDY = common dso_local global i32 0, align 4
@IER_ERXRDY = common dso_local global i32 0, align 4
@IER_ERLS = common dso_local global i32 0, align 4
@IER_EMSC = common dso_local global i32 0, align 4
@MCR_DTR = common dso_local global i32 0, align 4
@MCR_RTS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.serial*, i8*)* @dos_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dos_open(%struct.serial* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.serial*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.dos_ttystate*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.serial* %0, %struct.serial** %4, align 8
  store i8* %1, i8** %5, align 8
  %9 = load i8*, i8** %5, align 8
  %10 = call i64 @strncasecmp(i8* %9, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32 5)
  %11 = icmp eq i64 %10, 0
  br i1 %11, label %12, label %15

12:                                               ; preds = %2
  %13 = load i8*, i8** %5, align 8
  %14 = getelementptr inbounds i8, i8* %13, i64 5
  store i8* %14, i8** %5, align 8
  br label %23

15:                                               ; preds = %2
  %16 = load i8*, i8** %5, align 8
  %17 = call i64 @strncasecmp(i8* %16, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i32 5)
  %18 = icmp eq i64 %17, 0
  br i1 %18, label %19, label %22

19:                                               ; preds = %15
  %20 = load i8*, i8** %5, align 8
  %21 = getelementptr inbounds i8, i8* %20, i64 5
  store i8* %21, i8** %5, align 8
  br label %22

22:                                               ; preds = %19, %15
  br label %23

23:                                               ; preds = %22, %12
  %24 = load i8*, i8** %5, align 8
  %25 = call i32 @strlen(i8* %24)
  %26 = icmp ne i32 %25, 4
  br i1 %26, label %31, label %27

27:                                               ; preds = %23
  %28 = load i8*, i8** %5, align 8
  %29 = call i64 @strncasecmp(i8* %28, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i32 3)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %27, %23
  %32 = load i32, i32* @ENOENT, align 4
  store i32 %32, i32* @errno, align 4
  store i32 -1, i32* %3, align 4
  br label %203

33:                                               ; preds = %27
  %34 = load i8*, i8** %5, align 8
  %35 = getelementptr inbounds i8, i8* %34, i64 3
  %36 = load i8, i8* %35, align 1
  %37 = sext i8 %36 to i32
  %38 = icmp slt i32 %37, 49
  br i1 %38, label %45, label %39

39:                                               ; preds = %33
  %40 = load i8*, i8** %5, align 8
  %41 = getelementptr inbounds i8, i8* %40, i64 3
  %42 = load i8, i8* %41, align 1
  %43 = sext i8 %42 to i32
  %44 = icmp sgt i32 %43, 52
  br i1 %44, label %45, label %47

45:                                               ; preds = %39, %33
  %46 = load i32, i32* @ENOENT, align 4
  store i32 %46, i32* @errno, align 4
  store i32 -1, i32* %3, align 4
  br label %203

47:                                               ; preds = %39
  %48 = load i8*, i8** %5, align 8
  %49 = getelementptr inbounds i8, i8* %48, i64 3
  %50 = load i8, i8* %49, align 1
  %51 = sext i8 %50 to i32
  %52 = sub nsw i32 %51, 49
  store i32 %52, i32* %7, align 4
  %53 = load %struct.dos_ttystate*, %struct.dos_ttystate** @ports, align 8
  %54 = load i32, i32* %7, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds %struct.dos_ttystate, %struct.dos_ttystate* %53, i64 %55
  store %struct.dos_ttystate* %56, %struct.dos_ttystate** %6, align 8
  %57 = load %struct.dos_ttystate*, %struct.dos_ttystate** %6, align 8
  %58 = getelementptr inbounds %struct.dos_ttystate, %struct.dos_ttystate* %57, i32 0, i32 8
  %59 = load i32, i32* %58, align 4
  %60 = add nsw i32 %59, 1
  store i32 %60, i32* %58, align 4
  %61 = icmp sgt i32 %59, 0
  br i1 %61, label %62, label %66

62:                                               ; preds = %47
  %63 = load i32, i32* %7, align 4
  %64 = load %struct.serial*, %struct.serial** %4, align 8
  %65 = getelementptr inbounds %struct.serial, %struct.serial* %64, i32 0, i32 0
  store i32 %63, i32* %65, align 4
  store i32 0, i32* %3, align 4
  br label %203

66:                                               ; preds = %47
  %67 = load %struct.dos_ttystate*, %struct.dos_ttystate** %6, align 8
  %68 = load i32, i32* @com_cfcr, align 4
  %69 = call i32 @outb(%struct.dos_ttystate* %67, i32 %68, i32 0)
  %70 = load %struct.dos_ttystate*, %struct.dos_ttystate** %6, align 8
  %71 = load i32, i32* @com_iir, align 4
  %72 = call i32 @outb(%struct.dos_ttystate* %70, i32 %71, i32 0)
  store i32 0, i32* %8, align 4
  br label %73

73:                                               ; preds = %87, %66
  %74 = load i32, i32* %8, align 4
  %75 = icmp slt i32 %74, 17
  br i1 %75, label %76, label %90

76:                                               ; preds = %73
  %77 = load %struct.dos_ttystate*, %struct.dos_ttystate** %6, align 8
  %78 = load i32, i32* @com_iir, align 4
  %79 = call i32 @inb(%struct.dos_ttystate* %77, i32 %78)
  %80 = and i32 %79, 56
  %81 = icmp eq i32 %80, 0
  br i1 %81, label %82, label %83

82:                                               ; preds = %76
  br label %92

83:                                               ; preds = %76
  %84 = load %struct.dos_ttystate*, %struct.dos_ttystate** %6, align 8
  %85 = load i32, i32* @com_data, align 4
  %86 = call i32 @inb(%struct.dos_ttystate* %84, i32 %85)
  br label %87

87:                                               ; preds = %83
  %88 = load i32, i32* %8, align 4
  %89 = add nsw i32 %88, 1
  store i32 %89, i32* %8, align 4
  br label %73

90:                                               ; preds = %73
  %91 = load i32, i32* @ENODEV, align 4
  store i32 %91, i32* @errno, align 4
  store i32 -1, i32* %3, align 4
  br label %203

92:                                               ; preds = %82
  %93 = load %struct.dos_ttystate*, %struct.dos_ttystate** %6, align 8
  %94 = load i32, i32* @com_ier, align 4
  %95 = call i32 @outb(%struct.dos_ttystate* %93, i32 %94, i32 0)
  %96 = load %struct.dos_ttystate*, %struct.dos_ttystate** %6, align 8
  %97 = load i32, i32* @com_fifo, align 4
  %98 = load i32, i32* @FIFO_ENABLE, align 4
  %99 = load i32, i32* @FIFO_RCV_RST, align 4
  %100 = or i32 %98, %99
  %101 = load i32, i32* @FIFO_XMT_RST, align 4
  %102 = or i32 %100, %101
  %103 = load i32, i32* @FIFO_TRIGGER, align 4
  %104 = or i32 %102, %103
  %105 = call i32 @outb(%struct.dos_ttystate* %96, i32 %97, i32 %104)
  %106 = call i32 @sleep(i32 1)
  %107 = load %struct.dos_ttystate*, %struct.dos_ttystate** %6, align 8
  %108 = load i32, i32* @com_iir, align 4
  %109 = call i32 @inb(%struct.dos_ttystate* %107, i32 %108)
  %110 = load i32, i32* @IIR_FIFO_MASK, align 4
  %111 = and i32 %109, %110
  %112 = load i32, i32* @IIR_FIFO_MASK, align 4
  %113 = icmp eq i32 %111, %112
  %114 = zext i1 %113 to i32
  %115 = load %struct.dos_ttystate*, %struct.dos_ttystate** %6, align 8
  %116 = getelementptr inbounds %struct.dos_ttystate, %struct.dos_ttystate* %115, i32 0, i32 0
  store i32 %114, i32* %116, align 8
  %117 = load %struct.dos_ttystate*, %struct.dos_ttystate** %6, align 8
  %118 = load i32, i32* @com_lsr, align 4
  %119 = call i32 @inb(%struct.dos_ttystate* %117, i32 %118)
  %120 = load %struct.dos_ttystate*, %struct.dos_ttystate** %6, align 8
  %121 = load i32, i32* @com_msr, align 4
  %122 = call i32 @inb(%struct.dos_ttystate* %120, i32 %121)
  %123 = load %struct.dos_ttystate*, %struct.dos_ttystate** %6, align 8
  %124 = load i32, i32* @com_mcr, align 4
  %125 = load i32, i32* @MCR_IENABLE, align 4
  %126 = call i32 @outb(%struct.dos_ttystate* %123, i32 %124, i32 %125)
  %127 = load %struct.dos_ttystate*, %struct.dos_ttystate** %6, align 8
  %128 = getelementptr inbounds %struct.dos_ttystate, %struct.dos_ttystate* %127, i32 0, i32 7
  %129 = load i32, i32* %128, align 8
  %130 = call %struct.TYPE_2__* @dos_hookirq(i32 %129)
  %131 = load %struct.dos_ttystate*, %struct.dos_ttystate** %6, align 8
  %132 = getelementptr inbounds %struct.dos_ttystate, %struct.dos_ttystate* %131, i32 0, i32 6
  store %struct.TYPE_2__* %130, %struct.TYPE_2__** %132, align 8
  %133 = load %struct.dos_ttystate*, %struct.dos_ttystate** %6, align 8
  %134 = getelementptr inbounds %struct.dos_ttystate, %struct.dos_ttystate* %133, i32 0, i32 6
  %135 = load %struct.TYPE_2__*, %struct.TYPE_2__** %134, align 8
  %136 = icmp ne %struct.TYPE_2__* %135, null
  br i1 %136, label %145, label %137

137:                                              ; preds = %92
  %138 = load %struct.dos_ttystate*, %struct.dos_ttystate** %6, align 8
  %139 = load i32, i32* @com_mcr, align 4
  %140 = call i32 @outb(%struct.dos_ttystate* %138, i32 %139, i32 0)
  %141 = load %struct.dos_ttystate*, %struct.dos_ttystate** %6, align 8
  %142 = load i32, i32* @com_fifo, align 4
  %143 = call i32 @outb(%struct.dos_ttystate* %141, i32 %142, i32 0)
  %144 = load i32, i32* @ENODEV, align 4
  store i32 %144, i32* @errno, align 4
  store i32 -1, i32* %3, align 4
  br label %203

145:                                              ; preds = %92
  %146 = call i32 (...) @disable()
  %147 = load %struct.dos_ttystate*, %struct.dos_ttystate** %6, align 8
  %148 = load %struct.dos_ttystate*, %struct.dos_ttystate** %6, align 8
  %149 = getelementptr inbounds %struct.dos_ttystate, %struct.dos_ttystate* %148, i32 0, i32 6
  %150 = load %struct.TYPE_2__*, %struct.TYPE_2__** %149, align 8
  %151 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %150, i32 0, i32 0
  store %struct.dos_ttystate* %147, %struct.dos_ttystate** %151, align 8
  %152 = load i32, i32* %7, align 4
  %153 = load %struct.serial*, %struct.serial** %4, align 8
  %154 = getelementptr inbounds %struct.serial, %struct.serial* %153, i32 0, i32 0
  store i32 %152, i32* %154, align 4
  %155 = load %struct.dos_ttystate*, %struct.dos_ttystate** %6, align 8
  %156 = getelementptr inbounds %struct.dos_ttystate, %struct.dos_ttystate* %155, i32 0, i32 4
  store i64 0, i64* %156, align 8
  %157 = load %struct.dos_ttystate*, %struct.dos_ttystate** %6, align 8
  %158 = getelementptr inbounds %struct.dos_ttystate, %struct.dos_ttystate* %157, i32 0, i32 5
  store i64 0, i64* %158, align 8
  %159 = load %struct.dos_ttystate*, %struct.dos_ttystate** %6, align 8
  %160 = getelementptr inbounds %struct.dos_ttystate, %struct.dos_ttystate* %159, i32 0, i32 3
  store i64 0, i64* %160, align 8
  %161 = load %struct.dos_ttystate*, %struct.dos_ttystate** %6, align 8
  %162 = getelementptr inbounds %struct.dos_ttystate, %struct.dos_ttystate* %161, i32 0, i32 2
  store i64 0, i64* %162, align 8
  %163 = load %struct.dos_ttystate*, %struct.dos_ttystate** %6, align 8
  %164 = getelementptr inbounds %struct.dos_ttystate, %struct.dos_ttystate* %163, i32 0, i32 1
  store i32 9600, i32* %164, align 4
  %165 = call i32 @dos_baudconv(i32 9600)
  store i32 %165, i32* %8, align 4
  %166 = load %struct.dos_ttystate*, %struct.dos_ttystate** %6, align 8
  %167 = load i32, i32* @com_cfcr, align 4
  %168 = load i32, i32* @CFCR_DLAB, align 4
  %169 = call i32 @outb(%struct.dos_ttystate* %166, i32 %167, i32 %168)
  %170 = load %struct.dos_ttystate*, %struct.dos_ttystate** %6, align 8
  %171 = load i32, i32* @com_dlbl, align 4
  %172 = load i32, i32* %8, align 4
  %173 = and i32 %172, 255
  %174 = call i32 @outb(%struct.dos_ttystate* %170, i32 %171, i32 %173)
  %175 = load %struct.dos_ttystate*, %struct.dos_ttystate** %6, align 8
  %176 = load i32, i32* @com_dlbh, align 4
  %177 = load i32, i32* %8, align 4
  %178 = ashr i32 %177, 8
  %179 = call i32 @outb(%struct.dos_ttystate* %175, i32 %176, i32 %178)
  %180 = load %struct.dos_ttystate*, %struct.dos_ttystate** %6, align 8
  %181 = load i32, i32* @com_cfcr, align 4
  %182 = load i32, i32* @CFCR_8BITS, align 4
  %183 = call i32 @outb(%struct.dos_ttystate* %180, i32 %181, i32 %182)
  %184 = load %struct.dos_ttystate*, %struct.dos_ttystate** %6, align 8
  %185 = load i32, i32* @com_ier, align 4
  %186 = load i32, i32* @IER_ETXRDY, align 4
  %187 = load i32, i32* @IER_ERXRDY, align 4
  %188 = or i32 %186, %187
  %189 = load i32, i32* @IER_ERLS, align 4
  %190 = or i32 %188, %189
  %191 = load i32, i32* @IER_EMSC, align 4
  %192 = or i32 %190, %191
  %193 = call i32 @outb(%struct.dos_ttystate* %184, i32 %185, i32 %192)
  %194 = load %struct.dos_ttystate*, %struct.dos_ttystate** %6, align 8
  %195 = load i32, i32* @com_mcr, align 4
  %196 = load i32, i32* @MCR_DTR, align 4
  %197 = load i32, i32* @MCR_RTS, align 4
  %198 = or i32 %196, %197
  %199 = load i32, i32* @MCR_IENABLE, align 4
  %200 = or i32 %198, %199
  %201 = call i32 @outb(%struct.dos_ttystate* %194, i32 %195, i32 %200)
  %202 = call i32 (...) @enable()
  store i32 0, i32* %3, align 4
  br label %203

203:                                              ; preds = %145, %137, %90, %62, %45, %31
  %204 = load i32, i32* %3, align 4
  ret i32 %204
}

declare dso_local i64 @strncasecmp(i8*, i8*, i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @outb(%struct.dos_ttystate*, i32, i32) #1

declare dso_local i32 @inb(%struct.dos_ttystate*, i32) #1

declare dso_local i32 @sleep(i32) #1

declare dso_local %struct.TYPE_2__* @dos_hookirq(i32) #1

declare dso_local i32 @disable(...) #1

declare dso_local i32 @dos_baudconv(i32) #1

declare dso_local i32 @enable(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
