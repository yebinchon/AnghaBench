; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/mandoc/extr_test-getsubopt.c_main.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/mandoc/extr_test-getsubopt.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@__const.main.buf = private unnamed_addr constant [4 x i8] c"k=v\00", align 1
@__const.main.token0 = private unnamed_addr constant [2 x i8] c"k\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca [4 x i8], align 1
  %3 = alloca i8*, align 8
  %4 = alloca [2 x i8], align 1
  %5 = alloca [2 x i8*], align 16
  %6 = alloca i8*, align 8
  store i32 0, i32* %1, align 4
  %7 = bitcast [4 x i8]* %2 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %7, i8* align 1 getelementptr inbounds ([4 x i8], [4 x i8]* @__const.main.buf, i32 0, i32 0), i64 4, i1 false)
  %8 = getelementptr inbounds [4 x i8], [4 x i8]* %2, i64 0, i64 0
  store i8* %8, i8** %3, align 8
  %9 = bitcast [2 x i8]* %4 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %9, i8* align 1 getelementptr inbounds ([2 x i8], [2 x i8]* @__const.main.token0, i32 0, i32 0), i64 2, i1 false)
  %10 = getelementptr inbounds [2 x i8*], [2 x i8*]* %5, i64 0, i64 0
  %11 = getelementptr inbounds [2 x i8], [2 x i8]* %4, i64 0, i64 0
  store i8* %11, i8** %10, align 8
  %12 = getelementptr inbounds i8*, i8** %10, i64 1
  store i8* null, i8** %12, align 8
  store i8* null, i8** %6, align 8
  %13 = getelementptr inbounds [2 x i8*], [2 x i8*]* %5, i64 0, i64 0
  %14 = call i64 @getsubopt(i8** %3, i8** %13, i8** %6)
  %15 = icmp eq i64 %14, 0
  br i1 %15, label %16, label %26

16:                                               ; preds = %0
  %17 = load i8*, i8** %6, align 8
  %18 = getelementptr inbounds [4 x i8], [4 x i8]* %2, i64 0, i64 0
  %19 = getelementptr inbounds i8, i8* %18, i64 2
  %20 = icmp eq i8* %17, %19
  br i1 %20, label %21, label %26

21:                                               ; preds = %16
  %22 = load i8*, i8** %3, align 8
  %23 = getelementptr inbounds [4 x i8], [4 x i8]* %2, i64 0, i64 0
  %24 = getelementptr inbounds i8, i8* %23, i64 3
  %25 = icmp eq i8* %22, %24
  br label %26

26:                                               ; preds = %21, %16, %0
  %27 = phi i1 [ false, %16 ], [ false, %0 ], [ %25, %21 ]
  %28 = xor i1 %27, true
  %29 = zext i1 %28 to i32
  ret i32 %29
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i64 @getsubopt(i8**, i8**, i8**) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
