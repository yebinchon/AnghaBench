; ModuleID = '/home/carl/AnghaBench/freebsd/sbin/restore/extr_tape.c_setdumpnum.c'
source_filename = "/home/carl/AnghaBench/freebsd/sbin/restore/extr_tape.c_setdumpnum.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mtop = type { i32, i32 }

@dumpnum = common dso_local global i32 0, align 4
@volno = common dso_local global i32 0, align 4
@pipein = common dso_local global i64 0, align 8
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [42 x i8] c"Cannot have multiple dumps on pipe input\0A\00", align 1
@MTFSF = common dso_local global i32 0, align 4
@pipecmdin = common dso_local global i32 0, align 4
@mt = common dso_local global i32 0, align 4
@MTIOCTOP = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [17 x i8] c"ioctl MTFSF: %s\0A\00", align 1
@errno = common dso_local global i32 0, align 4
@host = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @setdumpnum to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @setdumpnum() #0 {
  %1 = alloca %struct.mtop, align 4
  %2 = load i32, i32* @dumpnum, align 4
  %3 = icmp eq i32 %2, 1
  br i1 %3, label %7, label %4

4:                                                ; preds = %0
  %5 = load i32, i32* @volno, align 4
  %6 = icmp ne i32 %5, 1
  br i1 %6, label %7, label %8

7:                                                ; preds = %4, %0
  br label %34

8:                                                ; preds = %4
  %9 = load i64, i64* @pipein, align 8
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %15

11:                                               ; preds = %8
  %12 = load i32, i32* @stderr, align 4
  %13 = call i32 (i32, i8*, ...) @fprintf(i32 %12, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0))
  %14 = call i32 @done(i32 1)
  br label %15

15:                                               ; preds = %11, %8
  %16 = load i32, i32* @MTFSF, align 4
  %17 = getelementptr inbounds %struct.mtop, %struct.mtop* %1, i32 0, i32 1
  store i32 %16, i32* %17, align 4
  %18 = load i32, i32* @dumpnum, align 4
  %19 = sub nsw i32 %18, 1
  %20 = getelementptr inbounds %struct.mtop, %struct.mtop* %1, i32 0, i32 0
  store i32 %19, i32* %20, align 4
  %21 = load i32, i32* @pipecmdin, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %34, label %23

23:                                               ; preds = %15
  %24 = load i32, i32* @mt, align 4
  %25 = load i32, i32* @MTIOCTOP, align 4
  %26 = bitcast %struct.mtop* %1 to i8*
  %27 = call i64 @ioctl(i32 %24, i32 %25, i8* %26)
  %28 = icmp slt i64 %27, 0
  br i1 %28, label %29, label %34

29:                                               ; preds = %23
  %30 = load i32, i32* @stderr, align 4
  %31 = load i32, i32* @errno, align 4
  %32 = call i8* @strerror(i32 %31)
  %33 = call i32 (i32, i8*, ...) @fprintf(i32 %30, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0), i8* %32)
  br label %34

34:                                               ; preds = %7, %29, %23, %15
  ret void
}

declare dso_local i32 @fprintf(i32, i8*, ...) #1

declare dso_local i32 @done(i32) #1

declare dso_local i64 @ioctl(i32, i32, i8*) #1

declare dso_local i8* @strerror(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
