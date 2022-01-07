; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libbluetooth/extr_bluetooth.c_bt_gethostbyname.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libbluetooth/extr_bluetooth.c_bt_gethostbyname.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hostent = type { i8*, i8** }

@host_stayopen = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.hostent* @bt_gethostbyname(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.hostent*, align 8
  %4 = alloca i8**, align 8
  store i8* %0, i8** %2, align 8
  %5 = load i32, i32* @host_stayopen, align 4
  %6 = call i32 @bt_sethostent(i32 %5)
  br label %7

7:                                                ; preds = %37, %1
  %8 = call %struct.hostent* (...) @bt_gethostent()
  store %struct.hostent* %8, %struct.hostent** %3, align 8
  %9 = icmp ne %struct.hostent* %8, null
  br i1 %9, label %10, label %38

10:                                               ; preds = %7
  %11 = load %struct.hostent*, %struct.hostent** %3, align 8
  %12 = getelementptr inbounds %struct.hostent, %struct.hostent* %11, i32 0, i32 0
  %13 = load i8*, i8** %12, align 8
  %14 = load i8*, i8** %2, align 8
  %15 = call i64 @strcasecmp(i8* %13, i8* %14)
  %16 = icmp eq i64 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %10
  br label %38

18:                                               ; preds = %10
  %19 = load %struct.hostent*, %struct.hostent** %3, align 8
  %20 = getelementptr inbounds %struct.hostent, %struct.hostent* %19, i32 0, i32 1
  %21 = load i8**, i8*** %20, align 8
  store i8** %21, i8*** %4, align 8
  br label %22

22:                                               ; preds = %34, %18
  %23 = load i8**, i8*** %4, align 8
  %24 = load i8*, i8** %23, align 8
  %25 = icmp ne i8* %24, null
  br i1 %25, label %26, label %37

26:                                               ; preds = %22
  %27 = load i8**, i8*** %4, align 8
  %28 = load i8*, i8** %27, align 8
  %29 = load i8*, i8** %2, align 8
  %30 = call i64 @strcasecmp(i8* %28, i8* %29)
  %31 = icmp eq i64 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %26
  br label %39

33:                                               ; preds = %26
  br label %34

34:                                               ; preds = %33
  %35 = load i8**, i8*** %4, align 8
  %36 = getelementptr inbounds i8*, i8** %35, i32 1
  store i8** %36, i8*** %4, align 8
  br label %22

37:                                               ; preds = %22
  br label %7

38:                                               ; preds = %17, %7
  br label %39

39:                                               ; preds = %38, %32
  %40 = call i32 (...) @bt_endhostent()
  %41 = load %struct.hostent*, %struct.hostent** %3, align 8
  ret %struct.hostent* %41
}

declare dso_local i32 @bt_sethostent(i32) #1

declare dso_local %struct.hostent* @bt_gethostent(...) #1

declare dso_local i64 @strcasecmp(i8*, i8*) #1

declare dso_local i32 @bt_endhostent(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
