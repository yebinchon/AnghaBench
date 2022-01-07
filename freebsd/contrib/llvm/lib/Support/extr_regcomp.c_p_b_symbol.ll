; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/llvm/lib/Support/extr_regcomp.c_p_b_symbol.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/llvm/lib/Support/extr_regcomp.c_p_b_symbol.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.parse = type { i32 }

@REG_EBRACK = common dso_local global i32 0, align 4
@REG_ECOLLATE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8 (%struct.parse*)* @p_b_symbol to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal signext i8 @p_b_symbol(%struct.parse* %0) #0 {
  %2 = alloca i8, align 1
  %3 = alloca %struct.parse*, align 8
  %4 = alloca i8, align 1
  store %struct.parse* %0, %struct.parse** %3, align 8
  %5 = call i32 (...) @MORE()
  %6 = load i32, i32* @REG_EBRACK, align 4
  %7 = call i32 @REQUIRE(i32 %5, i32 %6)
  %8 = call i32 @EATTWO(i8 signext 91, i8 signext 46)
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %12, label %10

10:                                               ; preds = %1
  %11 = call signext i8 (...) @GETNEXT()
  store i8 %11, i8* %2, align 1
  br label %19

12:                                               ; preds = %1
  %13 = load %struct.parse*, %struct.parse** %3, align 8
  %14 = call signext i8 @p_b_coll_elem(%struct.parse* %13, i8 signext 46)
  store i8 %14, i8* %4, align 1
  %15 = call i32 @EATTWO(i8 signext 46, i8 signext 93)
  %16 = load i32, i32* @REG_ECOLLATE, align 4
  %17 = call i32 @REQUIRE(i32 %15, i32 %16)
  %18 = load i8, i8* %4, align 1
  store i8 %18, i8* %2, align 1
  br label %19

19:                                               ; preds = %12, %10
  %20 = load i8, i8* %2, align 1
  ret i8 %20
}

declare dso_local i32 @REQUIRE(i32, i32) #1

declare dso_local i32 @MORE(...) #1

declare dso_local i32 @EATTWO(i8 signext, i8 signext) #1

declare dso_local signext i8 @GETNEXT(...) #1

declare dso_local signext i8 @p_b_coll_elem(%struct.parse*, i8 signext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
