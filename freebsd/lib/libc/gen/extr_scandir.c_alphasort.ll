; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libc/gen/extr_scandir.c_alphasort.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libc/gen/extr_scandir.c_alphasort.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dirent = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @alphasort(%struct.dirent** %0, %struct.dirent** %1) #0 {
  %3 = alloca %struct.dirent**, align 8
  %4 = alloca %struct.dirent**, align 8
  store %struct.dirent** %0, %struct.dirent*** %3, align 8
  store %struct.dirent** %1, %struct.dirent*** %4, align 8
  %5 = load %struct.dirent**, %struct.dirent*** %3, align 8
  %6 = load %struct.dirent*, %struct.dirent** %5, align 8
  %7 = getelementptr inbounds %struct.dirent, %struct.dirent* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = load %struct.dirent**, %struct.dirent*** %4, align 8
  %10 = load %struct.dirent*, %struct.dirent** %9, align 8
  %11 = getelementptr inbounds %struct.dirent, %struct.dirent* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = call i32 @strcoll(i32 %8, i32 %12)
  ret i32 %13
}

declare dso_local i32 @strcoll(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
