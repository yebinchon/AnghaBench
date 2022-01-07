; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/kadm5/extr_get_princs_s.c_add_princ.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/kadm5/extr_get_princs_s.c_add_princ.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.foreach_data = type { i8**, i32 }

@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.foreach_data*, i8*)* @add_princ to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @add_princ(%struct.foreach_data* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.foreach_data*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8**, align 8
  store %struct.foreach_data* %0, %struct.foreach_data** %4, align 8
  store i8* %1, i8** %5, align 8
  %7 = load %struct.foreach_data*, %struct.foreach_data** %4, align 8
  %8 = getelementptr inbounds %struct.foreach_data, %struct.foreach_data* %7, i32 0, i32 0
  %9 = load i8**, i8*** %8, align 8
  %10 = load %struct.foreach_data*, %struct.foreach_data** %4, align 8
  %11 = getelementptr inbounds %struct.foreach_data, %struct.foreach_data* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 8
  %13 = add nsw i32 %12, 1
  %14 = sext i32 %13 to i64
  %15 = mul i64 %14, 8
  %16 = trunc i64 %15 to i32
  %17 = call i8** @realloc(i8** %9, i32 %16)
  store i8** %17, i8*** %6, align 8
  %18 = load i8**, i8*** %6, align 8
  %19 = icmp eq i8** %18, null
  br i1 %19, label %20, label %22

20:                                               ; preds = %2
  %21 = load i32, i32* @ENOMEM, align 4
  store i32 %21, i32* %3, align 4
  br label %36

22:                                               ; preds = %2
  %23 = load i8**, i8*** %6, align 8
  %24 = load %struct.foreach_data*, %struct.foreach_data** %4, align 8
  %25 = getelementptr inbounds %struct.foreach_data, %struct.foreach_data* %24, i32 0, i32 0
  store i8** %23, i8*** %25, align 8
  %26 = load i8*, i8** %5, align 8
  %27 = load %struct.foreach_data*, %struct.foreach_data** %4, align 8
  %28 = getelementptr inbounds %struct.foreach_data, %struct.foreach_data* %27, i32 0, i32 0
  %29 = load i8**, i8*** %28, align 8
  %30 = load %struct.foreach_data*, %struct.foreach_data** %4, align 8
  %31 = getelementptr inbounds %struct.foreach_data, %struct.foreach_data* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 8
  %33 = add nsw i32 %32, 1
  store i32 %33, i32* %31, align 8
  %34 = sext i32 %32 to i64
  %35 = getelementptr inbounds i8*, i8** %29, i64 %34
  store i8* %26, i8** %35, align 8
  store i32 0, i32* %3, align 4
  br label %36

36:                                               ; preds = %22, %20
  %37 = load i32, i32* %3, align 4
  ret i32 %37
}

declare dso_local i8** @realloc(i8**, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
