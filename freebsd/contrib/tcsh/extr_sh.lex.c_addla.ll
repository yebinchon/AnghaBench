; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/tcsh/extr_sh.lex.c_addla.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/tcsh/extr_sh.lex.c_addla.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Strbuf = type { i64, i64 }

@addla.buf = internal global %struct.Strbuf zeroinitializer, align 8
@labuf = common dso_local global %struct.Strbuf zeroinitializer, align 8
@lap = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @addla(i32* %0) #0 {
  %2 = alloca i32*, align 8
  store i32* %0, i32** %2, align 8
  store i64 0, i64* getelementptr inbounds (%struct.Strbuf, %struct.Strbuf* @addla.buf, i32 0, i32 0), align 8
  %3 = load i64, i64* getelementptr inbounds (%struct.Strbuf, %struct.Strbuf* @labuf, i32 0, i32 1), align 8
  %4 = load i64, i64* @lap, align 8
  %5 = add nsw i64 %3, %4
  %6 = load i64, i64* getelementptr inbounds (%struct.Strbuf, %struct.Strbuf* @labuf, i32 0, i32 0), align 8
  %7 = load i64, i64* @lap, align 8
  %8 = sub nsw i64 %6, %7
  %9 = call i32 @Strbuf_appendn(%struct.Strbuf* @addla.buf, i64 %5, i64 %8)
  store i64 0, i64* getelementptr inbounds (%struct.Strbuf, %struct.Strbuf* @labuf, i32 0, i32 0), align 8
  %10 = load i32*, i32** %2, align 8
  %11 = call i32 @Strbuf_append(%struct.Strbuf* @labuf, i32* %10)
  %12 = call i32 @Strbuf_terminate(%struct.Strbuf* @labuf)
  %13 = load i64, i64* getelementptr inbounds (%struct.Strbuf, %struct.Strbuf* @addla.buf, i32 0, i32 1), align 8
  %14 = load i64, i64* getelementptr inbounds (%struct.Strbuf, %struct.Strbuf* @addla.buf, i32 0, i32 0), align 8
  %15 = call i32 @Strbuf_appendn(%struct.Strbuf* @labuf, i64 %13, i64 %14)
  %16 = load i32*, i32** %2, align 8
  %17 = call i32 @xfree(i32* %16)
  store i64 0, i64* @lap, align 8
  ret void
}

declare dso_local i32 @Strbuf_appendn(%struct.Strbuf*, i64, i64) #1

declare dso_local i32 @Strbuf_append(%struct.Strbuf*, i32*) #1

declare dso_local i32 @Strbuf_terminate(%struct.Strbuf*) #1

declare dso_local i32 @xfree(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
