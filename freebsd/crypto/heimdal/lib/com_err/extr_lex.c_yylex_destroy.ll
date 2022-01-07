; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/com_err/extr_lex.c_yylex_destroy.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/com_err/extr_lex.c_yylex_destroy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@YY_CURRENT_BUFFER = common dso_local global i64 0, align 8
@YY_CURRENT_BUFFER_LVALUE = common dso_local global i32* null, align 8
@yy_buffer_stack = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @yylex_destroy() #0 {
  br label %1

1:                                                ; preds = %4, %0
  %2 = load i64, i64* @YY_CURRENT_BUFFER, align 8
  %3 = icmp ne i64 %2, 0
  br i1 %3, label %4, label %8

4:                                                ; preds = %1
  %5 = load i64, i64* @YY_CURRENT_BUFFER, align 8
  %6 = call i32 @yy_delete_buffer(i64 %5)
  store i32* null, i32** @YY_CURRENT_BUFFER_LVALUE, align 8
  %7 = call i32 (...) @yypop_buffer_state()
  br label %1

8:                                                ; preds = %1
  %9 = load i32*, i32** @yy_buffer_stack, align 8
  %10 = call i32 @yyfree(i32* %9)
  store i32* null, i32** @yy_buffer_stack, align 8
  %11 = call i32 (...) @yy_init_globals()
  ret i32 0
}

declare dso_local i32 @yy_delete_buffer(i64) #1

declare dso_local i32 @yypop_buffer_state(...) #1

declare dso_local i32 @yyfree(i32*) #1

declare dso_local i32 @yy_init_globals(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
