; ModuleID = '/home/carl/AnghaBench/freebsd/sys/ddb/extr_db_sym.c_db_lookup.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/ddb/extr_db_sym.c_db_lookup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }

@db_nsymtab = common dso_local global i32 0, align 4
@db_symtabs = common dso_local global %struct.TYPE_4__* null, align 8
@.str = private unnamed_addr constant [26 x i8] c"invalid symbol table name\00", align 1
@db_last_symtab = common dso_local global %struct.TYPE_4__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i8*)* @db_lookup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @db_lookup(i8* %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store i32 0, i32* %6, align 4
  %10 = load i32, i32* @db_nsymtab, align 4
  store i32 %10, i32* %7, align 4
  %11 = load i8*, i8** %3, align 8
  store i8* %11, i8** %8, align 8
  br label %12

12:                                               ; preds = %71, %1
  %13 = load i8*, i8** %8, align 8
  %14 = load i8, i8* %13, align 1
  %15 = icmp ne i8 %14, 0
  br i1 %15, label %16, label %74

16:                                               ; preds = %12
  %17 = load i8*, i8** %8, align 8
  %18 = load i8, i8* %17, align 1
  %19 = sext i8 %18 to i32
  %20 = icmp eq i32 %19, 58
  br i1 %20, label %21, label %70

21:                                               ; preds = %16
  store i32 0, i32* %5, align 4
  br label %22

22:                                               ; preds = %58, %21
  %23 = load i32, i32* %5, align 4
  %24 = load i32, i32* @db_nsymtab, align 4
  %25 = icmp slt i32 %23, %24
  br i1 %25, label %26, label %61

26:                                               ; preds = %22
  %27 = load %struct.TYPE_4__*, %struct.TYPE_4__** @db_symtabs, align 8
  %28 = load i32, i32* %5, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i64 %29
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @strlen(i32 %32)
  store i32 %33, i32* %9, align 4
  %34 = load i32, i32* %9, align 4
  %35 = sext i32 %34 to i64
  %36 = load i8*, i8** %8, align 8
  %37 = load i8*, i8** %3, align 8
  %38 = ptrtoint i8* %36 to i64
  %39 = ptrtoint i8* %37 to i64
  %40 = sub i64 %38, %39
  %41 = icmp eq i64 %35, %40
  br i1 %41, label %42, label %57

42:                                               ; preds = %26
  %43 = load i8*, i8** %3, align 8
  %44 = load %struct.TYPE_4__*, %struct.TYPE_4__** @db_symtabs, align 8
  %45 = load i32, i32* %5, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i64 %46
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = load i32, i32* %9, align 4
  %51 = call i64 @strncmp(i8* %43, i32 %49, i32 %50)
  %52 = icmp eq i64 %51, 0
  br i1 %52, label %53, label %57

53:                                               ; preds = %42
  %54 = load i32, i32* %5, align 4
  store i32 %54, i32* %6, align 4
  %55 = load i32, i32* %5, align 4
  %56 = add nsw i32 %55, 1
  store i32 %56, i32* %7, align 4
  br label %61

57:                                               ; preds = %42, %26
  br label %58

58:                                               ; preds = %57
  %59 = load i32, i32* %5, align 4
  %60 = add nsw i32 %59, 1
  store i32 %60, i32* %5, align 4
  br label %22

61:                                               ; preds = %53, %22
  %62 = load i32, i32* %5, align 4
  %63 = load i32, i32* @db_nsymtab, align 4
  %64 = icmp eq i32 %62, %63
  br i1 %64, label %65, label %67

65:                                               ; preds = %61
  %66 = call i32 @db_error(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  br label %67

67:                                               ; preds = %65, %61
  %68 = load i8*, i8** %8, align 8
  %69 = getelementptr inbounds i8, i8* %68, i64 1
  store i8* %69, i8** %3, align 8
  br label %70

70:                                               ; preds = %67, %16
  br label %71

71:                                               ; preds = %70
  %72 = load i8*, i8** %8, align 8
  %73 = getelementptr inbounds i8, i8* %72, i32 1
  store i8* %73, i8** %8, align 8
  br label %12

74:                                               ; preds = %12
  %75 = load i32, i32* %6, align 4
  store i32 %75, i32* %5, align 4
  br label %76

76:                                               ; preds = %96, %74
  %77 = load i32, i32* %5, align 4
  %78 = load i32, i32* %7, align 4
  %79 = icmp slt i32 %77, %78
  br i1 %79, label %80, label %99

80:                                               ; preds = %76
  %81 = load %struct.TYPE_4__*, %struct.TYPE_4__** @db_symtabs, align 8
  %82 = load i32, i32* %5, align 4
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %81, i64 %83
  %85 = load i8*, i8** %3, align 8
  %86 = call i64 @X_db_lookup(%struct.TYPE_4__* %84, i8* %85)
  store i64 %86, i64* %4, align 8
  %87 = load i64, i64* %4, align 8
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %89, label %95

89:                                               ; preds = %80
  %90 = load %struct.TYPE_4__*, %struct.TYPE_4__** @db_symtabs, align 8
  %91 = load i32, i32* %5, align 4
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %90, i64 %92
  store %struct.TYPE_4__* %93, %struct.TYPE_4__** @db_last_symtab, align 8
  %94 = load i64, i64* %4, align 8
  store i64 %94, i64* %2, align 8
  br label %100

95:                                               ; preds = %80
  br label %96

96:                                               ; preds = %95
  %97 = load i32, i32* %5, align 4
  %98 = add nsw i32 %97, 1
  store i32 %98, i32* %5, align 4
  br label %76

99:                                               ; preds = %76
  store i64 0, i64* %2, align 8
  br label %100

100:                                              ; preds = %99, %89
  %101 = load i64, i64* %2, align 8
  ret i64 %101
}

declare dso_local i32 @strlen(i32) #1

declare dso_local i64 @strncmp(i8*, i32, i32) #1

declare dso_local i32 @db_error(i8*) #1

declare dso_local i64 @X_db_lookup(%struct.TYPE_4__*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
