; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ntp/libntp/extr_numtohost.c_numtohost.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ntp/libntp/extr_numtohost.c_numtohost.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hostent = type { i32 }

@LOOPBACKNETMASK = common dso_local global i32 0, align 4
@LOOPBACKNET = common dso_local global i32 0, align 4
@LOOPBACKHOST = common dso_local global i32 0, align 4
@AF_INET = common dso_local global i32 0, align 4
@LIB_BUFLENGTH = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @numtohost(i32 %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.hostent*, align 8
  store i32 %0, i32* %3, align 4
  %6 = load i32, i32* %3, align 4
  %7 = call i32 @ntohl(i32 %6)
  %8 = load i32, i32* @LOOPBACKNETMASK, align 4
  %9 = and i32 %7, %8
  %10 = load i32, i32* @LOOPBACKNET, align 4
  %11 = icmp eq i32 %9, %10
  br i1 %11, label %12, label %17

12:                                               ; preds = %1
  %13 = load i32, i32* %3, align 4
  %14 = call i32 @ntohl(i32 %13)
  %15 = load i32, i32* @LOOPBACKHOST, align 4
  %16 = icmp ne i32 %14, %15
  br i1 %16, label %22, label %17

17:                                               ; preds = %12, %1
  %18 = bitcast i32* %3 to i8*
  %19 = load i32, i32* @AF_INET, align 4
  %20 = call %struct.hostent* @gethostbyaddr(i8* %18, i32 4, i32 %19)
  store %struct.hostent* %20, %struct.hostent** %5, align 8
  %21 = icmp eq %struct.hostent* %20, null
  br i1 %21, label %22, label %25

22:                                               ; preds = %17, %12
  %23 = load i32, i32* %3, align 4
  %24 = call i8* @numtoa(i32 %23)
  store i8* %24, i8** %2, align 8
  br label %35

25:                                               ; preds = %17
  %26 = load i8*, i8** %4, align 8
  %27 = call i32 @LIB_GETBUF(i8* %26)
  %28 = load i8*, i8** %4, align 8
  %29 = load %struct.hostent*, %struct.hostent** %5, align 8
  %30 = getelementptr inbounds %struct.hostent, %struct.hostent* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* @LIB_BUFLENGTH, align 4
  %33 = call i32 @strlcpy(i8* %28, i32 %31, i32 %32)
  %34 = load i8*, i8** %4, align 8
  store i8* %34, i8** %2, align 8
  br label %35

35:                                               ; preds = %25, %22
  %36 = load i8*, i8** %2, align 8
  ret i8* %36
}

declare dso_local i32 @ntohl(i32) #1

declare dso_local %struct.hostent* @gethostbyaddr(i8*, i32, i32) #1

declare dso_local i8* @numtoa(i32) #1

declare dso_local i32 @LIB_GETBUF(i8*) #1

declare dso_local i32 @strlcpy(i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
