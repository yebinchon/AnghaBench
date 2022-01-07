; ModuleID = '/home/carl/AnghaBench/freebsd/stand/ficl/extr_words.c_evaluate.c'
source_filename = "/home/carl/AnghaBench/freebsd/stand/ficl/extr_words.c_evaluate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32 }

@VM_OUTOFTEXT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_7__*)* @evaluate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @evaluate(%struct.TYPE_7__* %0) #0 {
  %2 = alloca %struct.TYPE_7__*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.TYPE_8__, align 4
  %6 = alloca i32, align 4
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %2, align 8
  %7 = call i32 (...) @POPUNS()
  store i32 %7, i32* %3, align 4
  %8 = call i8* (...) @POPPTR()
  store i8* %8, i8** %4, align 8
  %9 = load i32, i32* %3, align 4
  %10 = call i32 @IGNORE(i32 %9)
  %11 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %12 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %11, i32 0, i32 0
  %13 = bitcast %struct.TYPE_8__* %5 to i8*
  %14 = bitcast %struct.TYPE_8__* %12 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %13, i8* align 4 %14, i64 4, i1 false)
  %15 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %16 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %16, i32 0, i32 0
  store i32 -1, i32* %17, align 4
  %18 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %19 = load i8*, i8** %4, align 8
  %20 = load i32, i32* %3, align 4
  %21 = call i32 @ficlExecC(%struct.TYPE_7__* %18, i8* %19, i32 %20)
  store i32 %21, i32* %6, align 4
  %22 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %23 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %22, i32 0, i32 0
  %24 = bitcast %struct.TYPE_8__* %23 to i8*
  %25 = bitcast %struct.TYPE_8__* %5 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %24, i8* align 4 %25, i64 4, i1 false)
  %26 = load i32, i32* %6, align 4
  %27 = load i32, i32* @VM_OUTOFTEXT, align 4
  %28 = icmp ne i32 %26, %27
  br i1 %28, label %29, label %33

29:                                               ; preds = %1
  %30 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %31 = load i32, i32* %6, align 4
  %32 = call i32 @vmThrow(%struct.TYPE_7__* %30, i32 %31)
  br label %33

33:                                               ; preds = %29, %1
  ret void
}

declare dso_local i32 @POPUNS(...) #1

declare dso_local i8* @POPPTR(...) #1

declare dso_local i32 @IGNORE(i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @ficlExecC(%struct.TYPE_7__*, i8*, i32) #1

declare dso_local i32 @vmThrow(%struct.TYPE_7__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
