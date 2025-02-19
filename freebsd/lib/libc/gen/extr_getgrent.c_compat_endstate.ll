; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libc/gen/extr_getgrent.c_compat_endstate.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libc/gen/extr_getgrent.c_compat_endstate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.compat_state = type { i8*, i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @compat_endstate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @compat_endstate(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.compat_state*, align 8
  store i8* %0, i8** %2, align 8
  %4 = load i8*, i8** %2, align 8
  %5 = icmp eq i8* %4, null
  br i1 %5, label %6, label %7

6:                                                ; preds = %1
  br label %26

7:                                                ; preds = %1
  %8 = load i8*, i8** %2, align 8
  %9 = bitcast i8* %8 to %struct.compat_state*
  store %struct.compat_state* %9, %struct.compat_state** %3, align 8
  %10 = load %struct.compat_state*, %struct.compat_state** %3, align 8
  %11 = getelementptr inbounds %struct.compat_state, %struct.compat_state* %10, i32 0, i32 0
  %12 = load i8*, i8** %11, align 8
  %13 = call i32 @free(i8* %12)
  %14 = load %struct.compat_state*, %struct.compat_state** %3, align 8
  %15 = getelementptr inbounds %struct.compat_state, %struct.compat_state* %14, i32 0, i32 1
  %16 = load i32*, i32** %15, align 8
  %17 = icmp ne i32* %16, null
  br i1 %17, label %18, label %23

18:                                               ; preds = %7
  %19 = load %struct.compat_state*, %struct.compat_state** %3, align 8
  %20 = getelementptr inbounds %struct.compat_state, %struct.compat_state* %19, i32 0, i32 1
  %21 = load i32*, i32** %20, align 8
  %22 = call i32 @fclose(i32* %21)
  br label %23

23:                                               ; preds = %18, %7
  %24 = load i8*, i8** %2, align 8
  %25 = call i32 @free(i8* %24)
  br label %26

26:                                               ; preds = %23, %6
  ret void
}

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @fclose(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
