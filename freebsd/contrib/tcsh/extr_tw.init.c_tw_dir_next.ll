; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/tcsh/extr_tw.init.c_tw_dir_next.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/tcsh/extr_tw.init.c_tw_dir_next.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Strbuf = type { i32 }
%struct.dirent = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.Strbuf*, i32*)* @tw_dir_next to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tw_dir_next(%struct.Strbuf* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.Strbuf*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.dirent*, align 8
  store %struct.Strbuf* %0, %struct.Strbuf** %4, align 8
  store i32* %1, i32** %5, align 8
  %7 = load i32*, i32** %5, align 8
  %8 = icmp eq i32* %7, null
  br i1 %8, label %9, label %10

9:                                                ; preds = %2
  store i32 0, i32* %3, align 4
  br label %22

10:                                               ; preds = %2
  %11 = load i32*, i32** %5, align 8
  %12 = call %struct.dirent* @readdir(i32* %11)
  store %struct.dirent* %12, %struct.dirent** %6, align 8
  %13 = icmp ne %struct.dirent* %12, null
  br i1 %13, label %14, label %21

14:                                               ; preds = %10
  %15 = load %struct.Strbuf*, %struct.Strbuf** %4, align 8
  %16 = load %struct.dirent*, %struct.dirent** %6, align 8
  %17 = getelementptr inbounds %struct.dirent, %struct.dirent* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @str2short(i32 %18)
  %20 = call i32 @Strbuf_append(%struct.Strbuf* %15, i32 %19)
  store i32 1, i32* %3, align 4
  br label %22

21:                                               ; preds = %10
  store i32 0, i32* %3, align 4
  br label %22

22:                                               ; preds = %21, %14, %9
  %23 = load i32, i32* %3, align 4
  ret i32 %23
}

declare dso_local %struct.dirent* @readdir(i32*) #1

declare dso_local i32 @Strbuf_append(%struct.Strbuf*, i32) #1

declare dso_local i32 @str2short(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
