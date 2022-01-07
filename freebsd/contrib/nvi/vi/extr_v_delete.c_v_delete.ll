; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/nvi/vi/extr_v_delete.c_v_delete.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/nvi/vi/extr_v_delete.c_v_delete.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { %struct.TYPE_7__, i32, i32, i32 }
%struct.TYPE_7__ = type { i32, i64 }

@VM_LMODE = common dso_local global i32 0, align 4
@CUT_LINEMODE = common dso_local global i32 0, align 4
@VC_BUFFER = common dso_local global i32 0, align 4
@VM_CUTREQ = common dso_local global i32 0, align 4
@CUT_NUMREQ = common dso_local global i32 0, align 4
@CUT_NUMOPT = common dso_local global i32 0, align 4
@DBG_FATAL = common dso_local global i32 0, align 4
@VM_RCM_MASK = common dso_local global i32 0, align 4
@VM_RCM_SET = common dso_local global i32 0, align 4
@VM_LDOUBLE = common dso_local global i32 0, align 4
@VM_RCM_SETFNB = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @v_delete(i32* %0, %struct.TYPE_8__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_8__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store %struct.TYPE_8__* %1, %struct.TYPE_8__** %5, align 8
  %9 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %10 = load i32, i32* @VM_LMODE, align 4
  %11 = call i64 @F_ISSET(%struct.TYPE_8__* %9, i32 %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %15

13:                                               ; preds = %2
  %14 = load i32, i32* @CUT_LINEMODE, align 4
  br label %16

15:                                               ; preds = %2
  br label %16

16:                                               ; preds = %15, %13
  %17 = phi i32 [ %14, %13 ], [ 0, %15 ]
  store i32 %17, i32* %8, align 4
  %18 = load i32*, i32** %4, align 8
  %19 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %20 = load i32, i32* @VC_BUFFER, align 4
  %21 = call i64 @F_ISSET(%struct.TYPE_8__* %19, i32 %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %26

23:                                               ; preds = %16
  %24 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %25 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %24, i32 0, i32 3
  br label %27

26:                                               ; preds = %16
  br label %27

27:                                               ; preds = %26, %23
  %28 = phi i32* [ %25, %23 ], [ null, %26 ]
  %29 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %30 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %29, i32 0, i32 2
  %31 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %32 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %31, i32 0, i32 1
  %33 = load i32, i32* %8, align 4
  %34 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %35 = load i32, i32* @VM_CUTREQ, align 4
  %36 = call i64 @F_ISSET(%struct.TYPE_8__* %34, i32 %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %40

38:                                               ; preds = %27
  %39 = load i32, i32* @CUT_NUMREQ, align 4
  br label %42

40:                                               ; preds = %27
  %41 = load i32, i32* @CUT_NUMOPT, align 4
  br label %42

42:                                               ; preds = %40, %38
  %43 = phi i32 [ %39, %38 ], [ %41, %40 ]
  %44 = or i32 %33, %43
  %45 = call i64 @cut(i32* %18, i32* %28, i32* %30, i32* %32, i32 %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %48

47:                                               ; preds = %42
  store i32 1, i32* %3, align 4
  br label %147

48:                                               ; preds = %42
  %49 = load i32*, i32** %4, align 8
  %50 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %51 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %50, i32 0, i32 2
  %52 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %53 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %52, i32 0, i32 1
  %54 = load i32, i32* %8, align 4
  %55 = call i64 @del(i32* %49, i32* %51, i32* %53, i32 %54)
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %58

57:                                               ; preds = %48
  store i32 1, i32* %3, align 4
  br label %147

58:                                               ; preds = %48
  %59 = load i32*, i32** %4, align 8
  %60 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %61 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = add nsw i32 %63, 1
  %65 = call i32 @db_exist(i32* %59, i32 %64)
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %83, label %67

67:                                               ; preds = %58
  %68 = load i32*, i32** %4, align 8
  %69 = call i64 @db_last(i32* %68, i32* %6)
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %72

71:                                               ; preds = %67
  store i32 1, i32* %3, align 4
  br label %147

72:                                               ; preds = %67
  %73 = load i32, i32* %6, align 4
  %74 = icmp eq i32 %73, 0
  br i1 %74, label %75, label %82

75:                                               ; preds = %72
  %76 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %77 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %76, i32 0, i32 0
  %78 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %77, i32 0, i32 0
  store i32 1, i32* %78, align 8
  %79 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %80 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %79, i32 0, i32 0
  %81 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %80, i32 0, i32 1
  store i64 0, i64* %81, align 8
  store i32 0, i32* %3, align 4
  br label %147

82:                                               ; preds = %72
  br label %83

83:                                               ; preds = %82, %58
  %84 = load i32*, i32** %4, align 8
  %85 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %86 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %85, i32 0, i32 0
  %87 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 8
  %89 = call i64 @db_get(i32* %84, i32 %88, i32 0, i32* null, i64* %7)
  %90 = icmp ne i64 %89, 0
  br i1 %90, label %91, label %103

91:                                               ; preds = %83
  %92 = load i32*, i32** %4, align 8
  %93 = load i32, i32* %6, align 4
  %94 = load i32, i32* @DBG_FATAL, align 4
  %95 = call i64 @db_get(i32* %92, i32 %93, i32 %94, i32* null, i64* %7)
  %96 = icmp ne i64 %95, 0
  br i1 %96, label %97, label %98

97:                                               ; preds = %91
  store i32 1, i32* %3, align 4
  br label %147

98:                                               ; preds = %91
  %99 = load i32, i32* %6, align 4
  %100 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %101 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %100, i32 0, i32 0
  %102 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %101, i32 0, i32 0
  store i32 %99, i32* %102, align 8
  br label %103

103:                                              ; preds = %98, %83
  %104 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %105 = load i32, i32* @VM_LMODE, align 4
  %106 = call i64 @F_ISSET(%struct.TYPE_8__* %104, i32 %105)
  %107 = icmp ne i64 %106, 0
  br i1 %107, label %134, label %108

108:                                              ; preds = %103
  %109 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %110 = load i32, i32* @VM_RCM_MASK, align 4
  %111 = call i32 @F_CLR(%struct.TYPE_8__* %109, i32 %110)
  %112 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %113 = load i32, i32* @VM_RCM_SET, align 4
  %114 = call i32 @F_SET(%struct.TYPE_8__* %112, i32 %113)
  %115 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %116 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %115, i32 0, i32 0
  %117 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %116, i32 0, i32 1
  %118 = load i64, i64* %117, align 8
  %119 = load i64, i64* %7, align 8
  %120 = icmp uge i64 %118, %119
  br i1 %120, label %121, label %133

121:                                              ; preds = %108
  %122 = load i64, i64* %7, align 8
  %123 = icmp ne i64 %122, 0
  br i1 %123, label %124, label %127

124:                                              ; preds = %121
  %125 = load i64, i64* %7, align 8
  %126 = sub i64 %125, 1
  br label %128

127:                                              ; preds = %121
  br label %128

128:                                              ; preds = %127, %124
  %129 = phi i64 [ %126, %124 ], [ 0, %127 ]
  %130 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %131 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %130, i32 0, i32 0
  %132 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %131, i32 0, i32 1
  store i64 %129, i64* %132, align 8
  br label %133

133:                                              ; preds = %128, %108
  br label %134

134:                                              ; preds = %133, %103
  %135 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %136 = load i32, i32* @VM_LDOUBLE, align 4
  %137 = call i64 @F_ISSET(%struct.TYPE_8__* %135, i32 %136)
  %138 = icmp ne i64 %137, 0
  br i1 %138, label %139, label %146

139:                                              ; preds = %134
  %140 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %141 = load i32, i32* @VM_RCM_MASK, align 4
  %142 = call i32 @F_CLR(%struct.TYPE_8__* %140, i32 %141)
  %143 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %144 = load i32, i32* @VM_RCM_SETFNB, align 4
  %145 = call i32 @F_SET(%struct.TYPE_8__* %143, i32 %144)
  br label %146

146:                                              ; preds = %139, %134
  store i32 0, i32* %3, align 4
  br label %147

147:                                              ; preds = %146, %97, %75, %71, %57, %47
  %148 = load i32, i32* %3, align 4
  ret i32 %148
}

declare dso_local i64 @F_ISSET(%struct.TYPE_8__*, i32) #1

declare dso_local i64 @cut(i32*, i32*, i32*, i32*, i32) #1

declare dso_local i64 @del(i32*, i32*, i32*, i32) #1

declare dso_local i32 @db_exist(i32*, i32) #1

declare dso_local i64 @db_last(i32*, i32*) #1

declare dso_local i64 @db_get(i32*, i32, i32, i32*, i64*) #1

declare dso_local i32 @F_CLR(%struct.TYPE_8__*, i32) #1

declare dso_local i32 @F_SET(%struct.TYPE_8__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
