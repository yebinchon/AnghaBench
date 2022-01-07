; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/gdbserver/extr_remote-utils.c_outreg.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/gdbserver/extr_remote-utils.c_outreg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i32, i8*)* @outreg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @outreg(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %5 = load i32, i32* %3, align 4
  %6 = ashr i32 %5, 12
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %8, label %16

8:                                                ; preds = %2
  %9 = load i32, i32* %3, align 4
  %10 = ashr i32 %9, 12
  %11 = and i32 %10, 15
  %12 = call i8* @tohex(i32 %11)
  %13 = ptrtoint i8* %12 to i8
  %14 = load i8*, i8** %4, align 8
  %15 = getelementptr inbounds i8, i8* %14, i32 1
  store i8* %15, i8** %4, align 8
  store i8 %13, i8* %14, align 1
  br label %16

16:                                               ; preds = %8, %2
  %17 = load i32, i32* %3, align 4
  %18 = ashr i32 %17, 8
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %28

20:                                               ; preds = %16
  %21 = load i32, i32* %3, align 4
  %22 = ashr i32 %21, 8
  %23 = and i32 %22, 15
  %24 = call i8* @tohex(i32 %23)
  %25 = ptrtoint i8* %24 to i8
  %26 = load i8*, i8** %4, align 8
  %27 = getelementptr inbounds i8, i8* %26, i32 1
  store i8* %27, i8** %4, align 8
  store i8 %25, i8* %26, align 1
  br label %28

28:                                               ; preds = %20, %16
  %29 = load i32, i32* %3, align 4
  %30 = ashr i32 %29, 4
  %31 = and i32 %30, 15
  %32 = call i8* @tohex(i32 %31)
  %33 = ptrtoint i8* %32 to i8
  %34 = load i8*, i8** %4, align 8
  %35 = getelementptr inbounds i8, i8* %34, i32 1
  store i8* %35, i8** %4, align 8
  store i8 %33, i8* %34, align 1
  %36 = load i32, i32* %3, align 4
  %37 = and i32 %36, 15
  %38 = call i8* @tohex(i32 %37)
  %39 = ptrtoint i8* %38 to i8
  %40 = load i8*, i8** %4, align 8
  %41 = getelementptr inbounds i8, i8* %40, i32 1
  store i8* %41, i8** %4, align 8
  store i8 %39, i8* %40, align 1
  %42 = load i8*, i8** %4, align 8
  %43 = getelementptr inbounds i8, i8* %42, i32 1
  store i8* %43, i8** %4, align 8
  store i8 58, i8* %42, align 1
  %44 = load i32, i32* %3, align 4
  %45 = load i8*, i8** %4, align 8
  %46 = call i32 @collect_register_as_string(i32 %44, i8* %45)
  %47 = load i32, i32* %3, align 4
  %48 = call i32 @register_size(i32 %47)
  %49 = mul nsw i32 2, %48
  %50 = load i8*, i8** %4, align 8
  %51 = sext i32 %49 to i64
  %52 = getelementptr inbounds i8, i8* %50, i64 %51
  store i8* %52, i8** %4, align 8
  %53 = load i8*, i8** %4, align 8
  %54 = getelementptr inbounds i8, i8* %53, i32 1
  store i8* %54, i8** %4, align 8
  store i8 59, i8* %53, align 1
  %55 = load i8*, i8** %4, align 8
  ret i8* %55
}

declare dso_local i8* @tohex(i32) #1

declare dso_local i32 @collect_register_as_string(i32, i8*) #1

declare dso_local i32 @register_size(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
