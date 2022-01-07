; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/mandoc/extr_eqn.c_eqn_undef.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/mandoc/extr_eqn.c_eqn_undef.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.eqn_node = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32 }
%struct.eqn_def = type { i64, i64, i32*, i32* }

@MODE_NOSUB = common dso_local global i32 0, align 4
@EQN_TOK_EOF = common dso_local global i64 0, align 8
@MANDOCERR_REQ_EMPTY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"undef\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.eqn_node*)* @eqn_undef to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @eqn_undef(%struct.eqn_node* %0) #0 {
  %2 = alloca %struct.eqn_node*, align 8
  %3 = alloca %struct.eqn_def*, align 8
  store %struct.eqn_node* %0, %struct.eqn_node** %2, align 8
  %4 = load %struct.eqn_node*, %struct.eqn_node** %2, align 8
  %5 = load i32, i32* @MODE_NOSUB, align 4
  %6 = call i64 @eqn_next(%struct.eqn_node* %4, i32 %5)
  %7 = load i64, i64* @EQN_TOK_EOF, align 8
  %8 = icmp eq i64 %6, %7
  br i1 %8, label %9, label %22

9:                                                ; preds = %1
  %10 = load i32, i32* @MANDOCERR_REQ_EMPTY, align 4
  %11 = load %struct.eqn_node*, %struct.eqn_node** %2, align 8
  %12 = getelementptr inbounds %struct.eqn_node, %struct.eqn_node* %11, i32 0, i32 0
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = load %struct.eqn_node*, %struct.eqn_node** %2, align 8
  %17 = getelementptr inbounds %struct.eqn_node, %struct.eqn_node* %16, i32 0, i32 0
  %18 = load %struct.TYPE_2__*, %struct.TYPE_2__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @mandoc_msg(i32 %10, i32 %15, i32 %20, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  br label %44

22:                                               ; preds = %1
  %23 = load %struct.eqn_node*, %struct.eqn_node** %2, align 8
  %24 = call %struct.eqn_def* @eqn_def_find(%struct.eqn_node* %23)
  store %struct.eqn_def* %24, %struct.eqn_def** %3, align 8
  %25 = icmp eq %struct.eqn_def* %24, null
  br i1 %25, label %26, label %27

26:                                               ; preds = %22
  br label %44

27:                                               ; preds = %22
  %28 = load %struct.eqn_def*, %struct.eqn_def** %3, align 8
  %29 = getelementptr inbounds %struct.eqn_def, %struct.eqn_def* %28, i32 0, i32 3
  %30 = load i32*, i32** %29, align 8
  %31 = call i32 @free(i32* %30)
  %32 = load %struct.eqn_def*, %struct.eqn_def** %3, align 8
  %33 = getelementptr inbounds %struct.eqn_def, %struct.eqn_def* %32, i32 0, i32 2
  %34 = load i32*, i32** %33, align 8
  %35 = call i32 @free(i32* %34)
  %36 = load %struct.eqn_def*, %struct.eqn_def** %3, align 8
  %37 = getelementptr inbounds %struct.eqn_def, %struct.eqn_def* %36, i32 0, i32 2
  store i32* null, i32** %37, align 8
  %38 = load %struct.eqn_def*, %struct.eqn_def** %3, align 8
  %39 = getelementptr inbounds %struct.eqn_def, %struct.eqn_def* %38, i32 0, i32 3
  store i32* null, i32** %39, align 8
  %40 = load %struct.eqn_def*, %struct.eqn_def** %3, align 8
  %41 = getelementptr inbounds %struct.eqn_def, %struct.eqn_def* %40, i32 0, i32 0
  store i64 0, i64* %41, align 8
  %42 = load %struct.eqn_def*, %struct.eqn_def** %3, align 8
  %43 = getelementptr inbounds %struct.eqn_def, %struct.eqn_def* %42, i32 0, i32 1
  store i64 0, i64* %43, align 8
  br label %44

44:                                               ; preds = %27, %26, %9
  ret void
}

declare dso_local i64 @eqn_next(%struct.eqn_node*, i32) #1

declare dso_local i32 @mandoc_msg(i32, i32, i32, i8*) #1

declare dso_local %struct.eqn_def* @eqn_def_find(%struct.eqn_node*) #1

declare dso_local i32 @free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
