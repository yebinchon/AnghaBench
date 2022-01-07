; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/mandoc/extr_man_macro.c_rew_scope.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/mandoc/extr_man_macro.c_rew_scope.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.roff_man = type { %struct.roff_node* }
%struct.roff_node = type { i64, i64, i32, %struct.roff_node*, i32* }
%struct.TYPE_2__ = type { i64 }

@MAN_RS = common dso_local global i32 0, align 4
@MAN_P = common dso_local global i64 0, align 8
@MAN_PP = common dso_local global i64 0, align 8
@MAN_LP = common dso_local global i64 0, align 8
@ROFFT_ROOT = common dso_local global i64 0, align 8
@NODE_VALID = common dso_local global i32 0, align 4
@ROFFT_BLOCK = common dso_local global i64 0, align 8
@MAN_SH = common dso_local global i32 0, align 4
@MAN_SS = common dso_local global i32 0, align 4
@blk_exp = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.roff_man*, i32)* @rew_scope to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rew_scope(%struct.roff_man* %0, i32 %1) #0 {
  %3 = alloca %struct.roff_man*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.roff_node*, align 8
  store %struct.roff_man* %0, %struct.roff_man** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.roff_man*, %struct.roff_man** %3, align 8
  %7 = getelementptr inbounds %struct.roff_man, %struct.roff_man* %6, i32 0, i32 0
  %8 = load %struct.roff_node*, %struct.roff_node** %7, align 8
  store %struct.roff_node* %8, %struct.roff_node** %5, align 8
  %9 = load i32, i32* %4, align 4
  %10 = load i32, i32* @MAN_RS, align 4
  %11 = icmp eq i32 %9, %10
  br i1 %11, label %12, label %36

12:                                               ; preds = %2
  %13 = load %struct.roff_node*, %struct.roff_node** %5, align 8
  %14 = getelementptr inbounds %struct.roff_node, %struct.roff_node* %13, i32 0, i32 4
  %15 = load i32*, i32** %14, align 8
  %16 = icmp eq i32* %15, null
  br i1 %16, label %17, label %36

17:                                               ; preds = %12
  %18 = load %struct.roff_node*, %struct.roff_node** %5, align 8
  %19 = getelementptr inbounds %struct.roff_node, %struct.roff_node* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @MAN_P, align 8
  %22 = icmp eq i64 %20, %21
  br i1 %22, label %35, label %23

23:                                               ; preds = %17
  %24 = load %struct.roff_node*, %struct.roff_node** %5, align 8
  %25 = getelementptr inbounds %struct.roff_node, %struct.roff_node* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* @MAN_PP, align 8
  %28 = icmp eq i64 %26, %27
  br i1 %28, label %35, label %29

29:                                               ; preds = %23
  %30 = load %struct.roff_node*, %struct.roff_node** %5, align 8
  %31 = getelementptr inbounds %struct.roff_node, %struct.roff_node* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = load i64, i64* @MAN_LP, align 8
  %34 = icmp eq i64 %32, %33
  br i1 %34, label %35, label %36

35:                                               ; preds = %29, %23, %17
  br label %117

36:                                               ; preds = %29, %12, %2
  br label %37

37:                                               ; preds = %110, %73, %51, %36
  %38 = load %struct.roff_node*, %struct.roff_node** %5, align 8
  %39 = getelementptr inbounds %struct.roff_node, %struct.roff_node* %38, i32 0, i32 1
  %40 = load i64, i64* %39, align 8
  %41 = load i64, i64* @ROFFT_ROOT, align 8
  %42 = icmp eq i64 %40, %41
  br i1 %42, label %43, label %44

43:                                               ; preds = %37
  br label %117

44:                                               ; preds = %37
  %45 = load %struct.roff_node*, %struct.roff_node** %5, align 8
  %46 = getelementptr inbounds %struct.roff_node, %struct.roff_node* %45, i32 0, i32 2
  %47 = load i32, i32* %46, align 8
  %48 = load i32, i32* @NODE_VALID, align 4
  %49 = and i32 %47, %48
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %55

51:                                               ; preds = %44
  %52 = load %struct.roff_node*, %struct.roff_node** %5, align 8
  %53 = getelementptr inbounds %struct.roff_node, %struct.roff_node* %52, i32 0, i32 3
  %54 = load %struct.roff_node*, %struct.roff_node** %53, align 8
  store %struct.roff_node* %54, %struct.roff_node** %5, align 8
  br label %37

55:                                               ; preds = %44
  %56 = load %struct.roff_node*, %struct.roff_node** %5, align 8
  %57 = getelementptr inbounds %struct.roff_node, %struct.roff_node* %56, i32 0, i32 1
  %58 = load i64, i64* %57, align 8
  %59 = load i64, i64* @ROFFT_BLOCK, align 8
  %60 = icmp ne i64 %58, %59
  br i1 %60, label %61, label %77

61:                                               ; preds = %55
  %62 = load %struct.roff_node*, %struct.roff_node** %5, align 8
  %63 = getelementptr inbounds %struct.roff_node, %struct.roff_node* %62, i32 0, i32 3
  %64 = load %struct.roff_node*, %struct.roff_node** %63, align 8
  %65 = getelementptr inbounds %struct.roff_node, %struct.roff_node* %64, i32 0, i32 1
  %66 = load i64, i64* %65, align 8
  %67 = load i64, i64* @ROFFT_ROOT, align 8
  %68 = icmp eq i64 %66, %67
  br i1 %68, label %69, label %73

69:                                               ; preds = %61
  %70 = load %struct.roff_man*, %struct.roff_man** %3, align 8
  %71 = load %struct.roff_node*, %struct.roff_node** %5, align 8
  %72 = call i32 @man_unscope(%struct.roff_man* %70, %struct.roff_node* %71)
  br label %117

73:                                               ; preds = %61
  %74 = load %struct.roff_node*, %struct.roff_node** %5, align 8
  %75 = getelementptr inbounds %struct.roff_node, %struct.roff_node* %74, i32 0, i32 3
  %76 = load %struct.roff_node*, %struct.roff_node** %75, align 8
  store %struct.roff_node* %76, %struct.roff_node** %5, align 8
  br label %37

77:                                               ; preds = %55
  %78 = load i32, i32* %4, align 4
  %79 = load i32, i32* @MAN_SH, align 4
  %80 = icmp ne i32 %78, %79
  br i1 %80, label %81, label %110

81:                                               ; preds = %77
  %82 = load %struct.roff_node*, %struct.roff_node** %5, align 8
  %83 = getelementptr inbounds %struct.roff_node, %struct.roff_node* %82, i32 0, i32 0
  %84 = load i64, i64* %83, align 8
  %85 = load i32, i32* @MAN_SH, align 4
  %86 = sext i32 %85 to i64
  %87 = icmp eq i64 %84, %86
  br i1 %87, label %109, label %88

88:                                               ; preds = %81
  %89 = load i32, i32* %4, align 4
  %90 = load i32, i32* @MAN_SS, align 4
  %91 = icmp ne i32 %89, %90
  br i1 %91, label %92, label %110

92:                                               ; preds = %88
  %93 = load %struct.roff_node*, %struct.roff_node** %5, align 8
  %94 = getelementptr inbounds %struct.roff_node, %struct.roff_node* %93, i32 0, i32 0
  %95 = load i64, i64* %94, align 8
  %96 = load i32, i32* @MAN_SS, align 4
  %97 = sext i32 %96 to i64
  %98 = icmp eq i64 %95, %97
  br i1 %98, label %109, label %99

99:                                               ; preds = %92
  %100 = load %struct.roff_node*, %struct.roff_node** %5, align 8
  %101 = getelementptr inbounds %struct.roff_node, %struct.roff_node* %100, i32 0, i32 0
  %102 = load i64, i64* %101, align 8
  %103 = trunc i64 %102 to i32
  %104 = call %struct.TYPE_2__* @man_macro(i32 %103)
  %105 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %104, i32 0, i32 0
  %106 = load i64, i64* %105, align 8
  %107 = load i64, i64* @blk_exp, align 8
  %108 = icmp eq i64 %106, %107
  br i1 %108, label %109, label %110

109:                                              ; preds = %99, %92, %81
  br label %117

110:                                              ; preds = %99, %88, %77
  %111 = load %struct.roff_man*, %struct.roff_man** %3, align 8
  %112 = load %struct.roff_node*, %struct.roff_node** %5, align 8
  %113 = call i32 @man_unscope(%struct.roff_man* %111, %struct.roff_node* %112)
  %114 = load %struct.roff_man*, %struct.roff_man** %3, align 8
  %115 = getelementptr inbounds %struct.roff_man, %struct.roff_man* %114, i32 0, i32 0
  %116 = load %struct.roff_node*, %struct.roff_node** %115, align 8
  store %struct.roff_node* %116, %struct.roff_node** %5, align 8
  br label %37

117:                                              ; preds = %109, %69, %43, %35
  ret void
}

declare dso_local i32 @man_unscope(%struct.roff_man*, %struct.roff_node*) #1

declare dso_local %struct.TYPE_2__* @man_macro(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
