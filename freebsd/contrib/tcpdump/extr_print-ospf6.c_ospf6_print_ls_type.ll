; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/tcpdump/extr_print-ospf6.c_ospf6_print_ls_type.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/tcpdump/extr_print-ospf6.c_ospf6_print_ls_type.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [41 x i8] c"\0A\09    %s LSA (%d), %s Scope%s, LSA-ID %s\00", align 1
@ospf6_lsa_values = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [8 x i8] c"Unknown\00", align 1
@LS_TYPE_MASK = common dso_local global i32 0, align 4
@ospf6_ls_scope_values = common dso_local global i32 0, align 4
@LS_SCOPE_MASK = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [13 x i8] c", transitive\00", align 1
@.str.3 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32, i32*)* @ospf6_print_ls_type to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ospf6_print_ls_type(i32* %0, i32 %1, i32* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  store i32* %0, i32** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32* %2, i32** %6, align 8
  %7 = load i32*, i32** %4, align 8
  %8 = load i32, i32* @ospf6_lsa_values, align 4
  %9 = load i32, i32* %5, align 4
  %10 = load i32, i32* @LS_TYPE_MASK, align 4
  %11 = and i32 %9, %10
  %12 = call i32 @tok2str(i32 %8, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i32 %11)
  %13 = load i32, i32* %5, align 4
  %14 = load i32, i32* @LS_TYPE_MASK, align 4
  %15 = and i32 %13, %14
  %16 = load i32, i32* @ospf6_ls_scope_values, align 4
  %17 = load i32, i32* %5, align 4
  %18 = load i32, i32* @LS_SCOPE_MASK, align 4
  %19 = and i32 %17, %18
  %20 = call i32 @tok2str(i32 %16, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i32 %19)
  %21 = load i32, i32* %5, align 4
  %22 = and i32 %21, 32768
  %23 = icmp ne i32 %22, 0
  %24 = zext i1 %23 to i64
  %25 = select i1 %23, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.3, i64 0, i64 0)
  %26 = load i32*, i32** %4, align 8
  %27 = load i32*, i32** %6, align 8
  %28 = call i32 @ipaddr_string(i32* %26, i32* %27)
  %29 = sext i32 %28 to i64
  %30 = inttoptr i64 %29 to i32*
  %31 = call i32 @ND_PRINT(i32* %30)
  ret void
}

declare dso_local i32 @ND_PRINT(i32*) #1

declare dso_local i32 @tok2str(i32, i8*, i32) #1

declare dso_local i32 @ipaddr_string(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
