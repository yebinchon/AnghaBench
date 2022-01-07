; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ldns/drill/extr_drill_util.c_print_class_type.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ldns/drill/extr_drill_util.c_print_class_type.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i8* }

@ldns_rr_classes = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c" %s\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c" CLASS%d\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c" RRSIG \00", align 1
@.str.3 = private unnamed_addr constant [9 x i8] c" DNSKEY \00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c" DS \00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32*)* @print_class_type to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @print_class_type(i32* %0, i32* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_3__*, align 8
  store i32* %0, i32** %3, align 8
  store i32* %1, i32** %4, align 8
  %6 = load i32, i32* @ldns_rr_classes, align 4
  %7 = load i32*, i32** %4, align 8
  %8 = call i32 @ldns_rr_get_class(i32* %7)
  %9 = call %struct.TYPE_3__* @ldns_lookup_by_id(i32 %6, i32 %8)
  store %struct.TYPE_3__* %9, %struct.TYPE_3__** %5, align 8
  %10 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %11 = icmp ne %struct.TYPE_3__* %10, null
  br i1 %11, label %12, label %18

12:                                               ; preds = %2
  %13 = load i32*, i32** %3, align 8
  %14 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 0
  %16 = load i8*, i8** %15, align 8
  %17 = call i32 (i32*, i8*, ...) @fprintf(i32* %13, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i8* %16)
  br label %23

18:                                               ; preds = %2
  %19 = load i32*, i32** %3, align 8
  %20 = load i32*, i32** %4, align 8
  %21 = call i32 @ldns_rr_get_class(i32* %20)
  %22 = call i32 (i32*, i8*, ...) @fprintf(i32* %19, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i32 %21)
  br label %23

23:                                               ; preds = %18, %12
  %24 = load i32*, i32** %4, align 8
  %25 = call i32 @ldns_rr_get_type(i32* %24)
  switch i32 %25, label %35 [
    i32 128, label %26
    i32 130, label %29
    i32 129, label %32
  ]

26:                                               ; preds = %23
  %27 = load i32*, i32** %3, align 8
  %28 = call i32 (i32*, i8*, ...) @fprintf(i32* %27, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0))
  br label %36

29:                                               ; preds = %23
  %30 = load i32*, i32** %3, align 8
  %31 = call i32 (i32*, i8*, ...) @fprintf(i32* %30, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0))
  br label %36

32:                                               ; preds = %23
  %33 = load i32*, i32** %3, align 8
  %34 = call i32 (i32*, i8*, ...) @fprintf(i32* %33, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0))
  br label %36

35:                                               ; preds = %23
  br label %36

36:                                               ; preds = %35, %32, %29, %26
  ret void
}

declare dso_local %struct.TYPE_3__* @ldns_lookup_by_id(i32, i32) #1

declare dso_local i32 @ldns_rr_get_class(i32*) #1

declare dso_local i32 @fprintf(i32*, i8*, ...) #1

declare dso_local i32 @ldns_rr_get_type(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
