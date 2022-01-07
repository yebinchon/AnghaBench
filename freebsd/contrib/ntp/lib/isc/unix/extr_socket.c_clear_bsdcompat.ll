; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ntp/lib/isc/unix/extr_socket.c_clear_bsdcompat.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ntp/lib/isc/unix/extr_socket.c_clear_bsdcompat.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.utsname = type { i8* }

@ISC_FALSE = common dso_local global i32 0, align 4
@bsdcompat = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @clear_bsdcompat to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @clear_bsdcompat() #0 {
  %1 = alloca %struct.utsname, align 8
  %2 = alloca i8*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = call i32 @uname(%struct.utsname* %1)
  %6 = getelementptr inbounds %struct.utsname, %struct.utsname* %1, i32 0, i32 0
  %7 = load i8*, i8** %6, align 8
  %8 = call i64 @strtol(i8* %7, i8** %2, i32 10)
  store i64 %8, i64* %3, align 8
  %9 = load i8*, i8** %2, align 8
  %10 = load i8, i8* %9, align 1
  %11 = sext i8 %10 to i32
  %12 = icmp eq i32 %11, 46
  br i1 %12, label %13, label %28

13:                                               ; preds = %0
  %14 = load i8*, i8** %2, align 8
  %15 = getelementptr inbounds i8, i8* %14, i64 1
  %16 = call i64 @strtol(i8* %15, i8** %2, i32 10)
  store i64 %16, i64* %4, align 8
  %17 = load i64, i64* %3, align 8
  %18 = icmp sgt i64 %17, 2
  br i1 %18, label %25, label %19

19:                                               ; preds = %13
  %20 = load i64, i64* %3, align 8
  %21 = icmp eq i64 %20, 2
  br i1 %21, label %22, label %27

22:                                               ; preds = %19
  %23 = load i64, i64* %4, align 8
  %24 = icmp sge i64 %23, 4
  br i1 %24, label %25, label %27

25:                                               ; preds = %22, %13
  %26 = load i32, i32* @ISC_FALSE, align 4
  store i32 %26, i32* @bsdcompat, align 4
  br label %27

27:                                               ; preds = %25, %22, %19
  br label %28

28:                                               ; preds = %27, %0
  ret void
}

declare dso_local i32 @uname(%struct.utsname*) #1

declare dso_local i64 @strtol(i8*, i8**, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
