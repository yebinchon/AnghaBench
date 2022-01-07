; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libjail/extr_jail.c_jailparam_init.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libjail/extr_jail.c_jailparam_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.jailparam = type { i32*, i32* }

@errno = common dso_local global i32 0, align 4
@jail_errmsg = common dso_local global i32 0, align 4
@JAIL_ERRMSGLEN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @jailparam_init(%struct.jailparam* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.jailparam*, align 8
  %5 = alloca i8*, align 8
  store %struct.jailparam* %0, %struct.jailparam** %4, align 8
  store i8* %1, i8** %5, align 8
  %6 = load %struct.jailparam*, %struct.jailparam** %4, align 8
  %7 = call i32 @memset(%struct.jailparam* %6, i32 0, i32 16)
  %8 = load i8*, i8** %5, align 8
  %9 = call i32* @strdup(i8* %8)
  %10 = load %struct.jailparam*, %struct.jailparam** %4, align 8
  %11 = getelementptr inbounds %struct.jailparam, %struct.jailparam* %10, i32 0, i32 1
  store i32* %9, i32** %11, align 8
  %12 = load %struct.jailparam*, %struct.jailparam** %4, align 8
  %13 = getelementptr inbounds %struct.jailparam, %struct.jailparam* %12, i32 0, i32 1
  %14 = load i32*, i32** %13, align 8
  %15 = icmp eq i32* %14, null
  br i1 %15, label %16, label %21

16:                                               ; preds = %2
  %17 = load i32, i32* @errno, align 4
  %18 = load i32, i32* @jail_errmsg, align 4
  %19 = load i32, i32* @JAIL_ERRMSGLEN, align 4
  %20 = call i32 @strerror_r(i32 %17, i32 %18, i32 %19)
  store i32 -1, i32* %3, align 4
  br label %33

21:                                               ; preds = %2
  %22 = load %struct.jailparam*, %struct.jailparam** %4, align 8
  %23 = call i64 @jailparam_type(%struct.jailparam* %22)
  %24 = icmp slt i64 %23, 0
  br i1 %24, label %25, label %32

25:                                               ; preds = %21
  %26 = load %struct.jailparam*, %struct.jailparam** %4, align 8
  %27 = call i32 @jailparam_free(%struct.jailparam* %26, i32 1)
  %28 = load %struct.jailparam*, %struct.jailparam** %4, align 8
  %29 = getelementptr inbounds %struct.jailparam, %struct.jailparam* %28, i32 0, i32 1
  store i32* null, i32** %29, align 8
  %30 = load %struct.jailparam*, %struct.jailparam** %4, align 8
  %31 = getelementptr inbounds %struct.jailparam, %struct.jailparam* %30, i32 0, i32 0
  store i32* null, i32** %31, align 8
  store i32 -1, i32* %3, align 4
  br label %33

32:                                               ; preds = %21
  store i32 0, i32* %3, align 4
  br label %33

33:                                               ; preds = %32, %25, %16
  %34 = load i32, i32* %3, align 4
  ret i32 %34
}

declare dso_local i32 @memset(%struct.jailparam*, i32, i32) #1

declare dso_local i32* @strdup(i8*) #1

declare dso_local i32 @strerror_r(i32, i32, i32) #1

declare dso_local i64 @jailparam_type(%struct.jailparam*) #1

declare dso_local i32 @jailparam_free(%struct.jailparam*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
