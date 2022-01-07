; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/tcsh/extr_ed.chared.c_c_save_inputbuf.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/tcsh/extr_ed.chared.c_c_save_inputbuf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64 }

@SavedBuf = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8
@InputBuf = common dso_local global i8* null, align 8
@LastChar = common dso_local global i8* null, align 8
@LastSaved = common dso_local global i8* null, align 8
@Cursor = common dso_local global i8* null, align 8
@CursSaved = common dso_local global i8* null, align 8
@Hist_num = common dso_local global i32 0, align 4
@HistSaved = common dso_local global i32 0, align 4
@RestoreSaved = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @c_save_inputbuf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @c_save_inputbuf() #0 {
  store i64 0, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @SavedBuf, i32 0, i32 0), align 8
  %1 = load i8*, i8** @InputBuf, align 8
  %2 = call i32 @Strbuf_append(%struct.TYPE_4__* @SavedBuf, i8* %1)
  %3 = call i32 @Strbuf_terminate(%struct.TYPE_4__* @SavedBuf)
  %4 = load i8*, i8** @LastChar, align 8
  %5 = load i8*, i8** @InputBuf, align 8
  %6 = ptrtoint i8* %4 to i64
  %7 = ptrtoint i8* %5 to i64
  %8 = sub i64 %6, %7
  %9 = inttoptr i64 %8 to i8*
  store i8* %9, i8** @LastSaved, align 8
  %10 = load i8*, i8** @Cursor, align 8
  %11 = load i8*, i8** @InputBuf, align 8
  %12 = ptrtoint i8* %10 to i64
  %13 = ptrtoint i8* %11 to i64
  %14 = sub i64 %12, %13
  %15 = inttoptr i64 %14 to i8*
  store i8* %15, i8** @CursSaved, align 8
  %16 = load i32, i32* @Hist_num, align 4
  store i32 %16, i32* @HistSaved, align 4
  store i32 1, i32* @RestoreSaved, align 4
  ret void
}

declare dso_local i32 @Strbuf_append(%struct.TYPE_4__*, i8*) #1

declare dso_local i32 @Strbuf_terminate(%struct.TYPE_4__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
