; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/heimdal/appl/ftp/ftpd/extr_security.c_sec_putc.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/heimdal/appl/ftp/ftpd/extr_security.c_sec_putc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32 }

@data_prot = common dso_local global i64 0, align 8
@prot_clear = common dso_local global i64 0, align 8
@out_buffer = common dso_local global %struct.TYPE_3__ zeroinitializer, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sec_putc(i32 %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i8, align 1
  store i32 %0, i32* %4, align 4
  store i32* %1, i32** %5, align 8
  %7 = load i32, i32* %4, align 4
  %8 = trunc i32 %7 to i8
  store i8 %8, i8* %6, align 1
  %9 = load i64, i64* @data_prot, align 8
  %10 = load i64, i64* @prot_clear, align 8
  %11 = icmp eq i64 %9, %10
  br i1 %11, label %12, label %16

12:                                               ; preds = %2
  %13 = load i32, i32* %4, align 4
  %14 = load i32*, i32** %5, align 8
  %15 = call i32 @putc(i32 %13, i32* %14)
  store i32 %15, i32* %3, align 4
  br label %31

16:                                               ; preds = %2
  %17 = call i32 @buffer_write(%struct.TYPE_3__* @out_buffer, i8* %6, i32 1)
  %18 = load i32, i32* %4, align 4
  %19 = icmp eq i32 %18, 10
  br i1 %19, label %23, label %20

20:                                               ; preds = %16
  %21 = load i32, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @out_buffer, i32 0, i32 0), align 4
  %22 = icmp sge i32 %21, 1024
  br i1 %22, label %23, label %29

23:                                               ; preds = %20, %16
  %24 = load i32*, i32** %5, align 8
  %25 = call i32 @fileno(i32* %24)
  %26 = load i32, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @out_buffer, i32 0, i32 1), align 4
  %27 = load i32, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @out_buffer, i32 0, i32 0), align 4
  %28 = call i32 @sec_write(i32 %25, i32 %26, i32 %27)
  store i32 0, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @out_buffer, i32 0, i32 0), align 4
  br label %29

29:                                               ; preds = %23, %20
  %30 = load i32, i32* %4, align 4
  store i32 %30, i32* %3, align 4
  br label %31

31:                                               ; preds = %29, %12
  %32 = load i32, i32* %3, align 4
  ret i32 %32
}

declare dso_local i32 @putc(i32, i32*) #1

declare dso_local i32 @buffer_write(%struct.TYPE_3__*, i8*, i32) #1

declare dso_local i32 @sec_write(i32, i32, i32) #1

declare dso_local i32 @fileno(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
