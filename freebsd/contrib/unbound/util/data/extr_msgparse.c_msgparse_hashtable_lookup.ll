; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/util/data/extr_msgparse.c_msgparse_hashtable_lookup.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/util/data/extr_msgparse.c_msgparse_hashtable_lookup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rrset_parse = type { %struct.rrset_parse* }
%struct.msg_parse = type { %struct.rrset_parse** }

@PARSE_TABLE_SIZE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.rrset_parse* @msgparse_hashtable_lookup(%struct.msg_parse* %0, i32* %1, i32 %2, i32 %3, i32* %4, i64 %5, i32 %6, i32 %7) #0 {
  %9 = alloca %struct.rrset_parse*, align 8
  %10 = alloca %struct.msg_parse*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca %struct.rrset_parse*, align 8
  store %struct.msg_parse* %0, %struct.msg_parse** %10, align 8
  store i32* %1, i32** %11, align 8
  store i32 %2, i32* %12, align 4
  store i32 %3, i32* %13, align 4
  store i32* %4, i32** %14, align 8
  store i64 %5, i64* %15, align 8
  store i32 %6, i32* %16, align 4
  store i32 %7, i32* %17, align 4
  %19 = load %struct.msg_parse*, %struct.msg_parse** %10, align 8
  %20 = getelementptr inbounds %struct.msg_parse, %struct.msg_parse* %19, i32 0, i32 0
  %21 = load %struct.rrset_parse**, %struct.rrset_parse*** %20, align 8
  %22 = load i32, i32* %12, align 4
  %23 = load i32, i32* @PARSE_TABLE_SIZE, align 4
  %24 = sub nsw i32 %23, 1
  %25 = and i32 %22, %24
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds %struct.rrset_parse*, %struct.rrset_parse** %21, i64 %26
  %28 = load %struct.rrset_parse*, %struct.rrset_parse** %27, align 8
  store %struct.rrset_parse* %28, %struct.rrset_parse** %18, align 8
  br label %29

29:                                               ; preds = %45, %8
  %30 = load %struct.rrset_parse*, %struct.rrset_parse** %18, align 8
  %31 = icmp ne %struct.rrset_parse* %30, null
  br i1 %31, label %32, label %49

32:                                               ; preds = %29
  %33 = load %struct.rrset_parse*, %struct.rrset_parse** %18, align 8
  %34 = load i32*, i32** %11, align 8
  %35 = load i32, i32* %12, align 4
  %36 = load i32, i32* %13, align 4
  %37 = load i32*, i32** %14, align 8
  %38 = load i64, i64* %15, align 8
  %39 = load i32, i32* %16, align 4
  %40 = load i32, i32* %17, align 4
  %41 = call i64 @rrset_parse_equals(%struct.rrset_parse* %33, i32* %34, i32 %35, i32 %36, i32* %37, i64 %38, i32 %39, i32 %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %45

43:                                               ; preds = %32
  %44 = load %struct.rrset_parse*, %struct.rrset_parse** %18, align 8
  store %struct.rrset_parse* %44, %struct.rrset_parse** %9, align 8
  br label %50

45:                                               ; preds = %32
  %46 = load %struct.rrset_parse*, %struct.rrset_parse** %18, align 8
  %47 = getelementptr inbounds %struct.rrset_parse, %struct.rrset_parse* %46, i32 0, i32 0
  %48 = load %struct.rrset_parse*, %struct.rrset_parse** %47, align 8
  store %struct.rrset_parse* %48, %struct.rrset_parse** %18, align 8
  br label %29

49:                                               ; preds = %29
  store %struct.rrset_parse* null, %struct.rrset_parse** %9, align 8
  br label %50

50:                                               ; preds = %49, %43
  %51 = load %struct.rrset_parse*, %struct.rrset_parse** %9, align 8
  ret %struct.rrset_parse* %51
}

declare dso_local i64 @rrset_parse_equals(%struct.rrset_parse*, i32*, i32, i32, i32*, i64, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
