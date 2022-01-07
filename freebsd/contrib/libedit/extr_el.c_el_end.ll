; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libedit/extr_el.c_el_end.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libedit/extr_el.c_el_end.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_21__ = type { i32, %struct.TYPE_20__, %struct.TYPE_19__, %struct.TYPE_18__, %struct.TYPE_21__*, i32 }
%struct.TYPE_20__ = type { %struct.TYPE_21__*, %struct.TYPE_21__* }
%struct.TYPE_19__ = type { %struct.TYPE_21__*, %struct.TYPE_21__* }
%struct.TYPE_18__ = type { %struct.TYPE_21__*, %struct.TYPE_21__* }

@NO_TTY = common dso_local global i32 0, align 4
@TCSAFLUSH = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @el_end(%struct.TYPE_21__* %0) #0 {
  %2 = alloca %struct.TYPE_21__*, align 8
  store %struct.TYPE_21__* %0, %struct.TYPE_21__** %2, align 8
  %3 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %4 = icmp eq %struct.TYPE_21__* %3, null
  br i1 %4, label %5, label %6

5:                                                ; preds = %1
  br label %78

6:                                                ; preds = %1
  %7 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %8 = call i32 @el_reset(%struct.TYPE_21__* %7)
  %9 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %10 = call i32 @terminal_end(%struct.TYPE_21__* %9)
  %11 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %12 = call i32 @keymacro_end(%struct.TYPE_21__* %11)
  %13 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %14 = call i32 @map_end(%struct.TYPE_21__* %13)
  %15 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %16 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = load i32, i32* @NO_TTY, align 4
  %19 = and i32 %17, %18
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %25, label %21

21:                                               ; preds = %6
  %22 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %23 = load i32, i32* @TCSAFLUSH, align 4
  %24 = call i32 @tty_end(%struct.TYPE_21__* %22, i32 %23)
  br label %25

25:                                               ; preds = %21, %6
  %26 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %27 = call i32 @ch_end(%struct.TYPE_21__* %26)
  %28 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %29 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %28, i32 0, i32 5
  %30 = load i32, i32* %29, align 8
  %31 = call i32 @read_end(i32 %30)
  %32 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %33 = call i32 @search_end(%struct.TYPE_21__* %32)
  %34 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %35 = call i32 @hist_end(%struct.TYPE_21__* %34)
  %36 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %37 = call i32 @prompt_end(%struct.TYPE_21__* %36)
  %38 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %39 = call i32 @sig_end(%struct.TYPE_21__* %38)
  %40 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %41 = call i32 @literal_end(%struct.TYPE_21__* %40)
  %42 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %43 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %42, i32 0, i32 4
  %44 = load %struct.TYPE_21__*, %struct.TYPE_21__** %43, align 8
  %45 = call i32 @el_free(%struct.TYPE_21__* %44)
  %46 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %47 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %46, i32 0, i32 3
  %48 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %47, i32 0, i32 1
  %49 = load %struct.TYPE_21__*, %struct.TYPE_21__** %48, align 8
  %50 = call i32 @el_free(%struct.TYPE_21__* %49)
  %51 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %52 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %51, i32 0, i32 3
  %53 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %52, i32 0, i32 0
  %54 = load %struct.TYPE_21__*, %struct.TYPE_21__** %53, align 8
  %55 = call i32 @el_free(%struct.TYPE_21__* %54)
  %56 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %57 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %56, i32 0, i32 2
  %58 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %57, i32 0, i32 1
  %59 = load %struct.TYPE_21__*, %struct.TYPE_21__** %58, align 8
  %60 = call i32 @el_free(%struct.TYPE_21__* %59)
  %61 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %62 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %61, i32 0, i32 2
  %63 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %62, i32 0, i32 0
  %64 = load %struct.TYPE_21__*, %struct.TYPE_21__** %63, align 8
  %65 = call i32 @el_free(%struct.TYPE_21__* %64)
  %66 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %67 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %66, i32 0, i32 1
  %68 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %67, i32 0, i32 1
  %69 = load %struct.TYPE_21__*, %struct.TYPE_21__** %68, align 8
  %70 = call i32 @el_free(%struct.TYPE_21__* %69)
  %71 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %72 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %71, i32 0, i32 1
  %73 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %72, i32 0, i32 0
  %74 = load %struct.TYPE_21__*, %struct.TYPE_21__** %73, align 8
  %75 = call i32 @el_free(%struct.TYPE_21__* %74)
  %76 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %77 = call i32 @el_free(%struct.TYPE_21__* %76)
  br label %78

78:                                               ; preds = %25, %5
  ret void
}

declare dso_local i32 @el_reset(%struct.TYPE_21__*) #1

declare dso_local i32 @terminal_end(%struct.TYPE_21__*) #1

declare dso_local i32 @keymacro_end(%struct.TYPE_21__*) #1

declare dso_local i32 @map_end(%struct.TYPE_21__*) #1

declare dso_local i32 @tty_end(%struct.TYPE_21__*, i32) #1

declare dso_local i32 @ch_end(%struct.TYPE_21__*) #1

declare dso_local i32 @read_end(i32) #1

declare dso_local i32 @search_end(%struct.TYPE_21__*) #1

declare dso_local i32 @hist_end(%struct.TYPE_21__*) #1

declare dso_local i32 @prompt_end(%struct.TYPE_21__*) #1

declare dso_local i32 @sig_end(%struct.TYPE_21__*) #1

declare dso_local i32 @literal_end(%struct.TYPE_21__*) #1

declare dso_local i32 @el_free(%struct.TYPE_21__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
