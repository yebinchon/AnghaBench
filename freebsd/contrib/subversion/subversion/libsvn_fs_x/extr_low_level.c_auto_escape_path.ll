; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_fs_x/extr_low_level.c_auto_escape_path.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_fs_x/extr_low_level.c_auto_escape_path.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i8* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i8*, i32*)* @auto_escape_path to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @auto_escape_path(i8* %0, i32* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8, align 1
  %9 = alloca %struct.TYPE_4__*, align 8
  store i8* %0, i8** %4, align 8
  store i32* %1, i32** %5, align 8
  %10 = load i8*, i8** %4, align 8
  %11 = call i64 @strlen(i8* %10)
  store i64 %11, i64* %6, align 8
  store i8 27, i8* %8, align 1
  store i64 0, i64* %7, align 8
  br label %12

12:                                               ; preds = %69, %2
  %13 = load i64, i64* %7, align 8
  %14 = load i64, i64* %6, align 8
  %15 = icmp ult i64 %13, %14
  br i1 %15, label %16, label %72

16:                                               ; preds = %12
  %17 = load i8*, i8** %4, align 8
  %18 = load i64, i64* %7, align 8
  %19 = getelementptr inbounds i8, i8* %17, i64 %18
  %20 = load i8, i8* %19, align 1
  %21 = sext i8 %20 to i32
  %22 = icmp slt i32 %21, 32
  br i1 %22, label %23, label %68

23:                                               ; preds = %16
  %24 = load i64, i64* %6, align 8
  %25 = mul i64 2, %24
  %26 = trunc i64 %25 to i32
  %27 = load i32*, i32** %5, align 8
  %28 = call %struct.TYPE_4__* @svn_stringbuf_create_ensure(i32 %26, i32* %27)
  store %struct.TYPE_4__* %28, %struct.TYPE_4__** %9, align 8
  store i64 0, i64* %7, align 8
  br label %29

29:                                               ; preds = %61, %23
  %30 = load i64, i64* %7, align 8
  %31 = load i64, i64* %6, align 8
  %32 = icmp ult i64 %30, %31
  br i1 %32, label %33, label %64

33:                                               ; preds = %29
  %34 = load i8*, i8** %4, align 8
  %35 = load i64, i64* %7, align 8
  %36 = getelementptr inbounds i8, i8* %34, i64 %35
  %37 = load i8, i8* %36, align 1
  %38 = sext i8 %37 to i32
  %39 = icmp slt i32 %38, 32
  br i1 %39, label %40, label %53

40:                                               ; preds = %33
  %41 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %42 = call i32 @svn_stringbuf_appendbyte(%struct.TYPE_4__* %41, i8 signext 27)
  %43 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %44 = load i8*, i8** %4, align 8
  %45 = load i64, i64* %7, align 8
  %46 = getelementptr inbounds i8, i8* %44, i64 %45
  %47 = load i8, i8* %46, align 1
  %48 = sext i8 %47 to i32
  %49 = add nsw i32 %48, 65
  %50 = sub nsw i32 %49, 1
  %51 = trunc i32 %50 to i8
  %52 = call i32 @svn_stringbuf_appendbyte(%struct.TYPE_4__* %43, i8 signext %51)
  br label %60

53:                                               ; preds = %33
  %54 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %55 = load i8*, i8** %4, align 8
  %56 = load i64, i64* %7, align 8
  %57 = getelementptr inbounds i8, i8* %55, i64 %56
  %58 = load i8, i8* %57, align 1
  %59 = call i32 @svn_stringbuf_appendbyte(%struct.TYPE_4__* %54, i8 signext %58)
  br label %60

60:                                               ; preds = %53, %40
  br label %61

61:                                               ; preds = %60
  %62 = load i64, i64* %7, align 8
  %63 = add i64 %62, 1
  store i64 %63, i64* %7, align 8
  br label %29

64:                                               ; preds = %29
  %65 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %66 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %65, i32 0, i32 0
  %67 = load i8*, i8** %66, align 8
  store i8* %67, i8** %3, align 8
  br label %74

68:                                               ; preds = %16
  br label %69

69:                                               ; preds = %68
  %70 = load i64, i64* %7, align 8
  %71 = add i64 %70, 1
  store i64 %71, i64* %7, align 8
  br label %12

72:                                               ; preds = %12
  %73 = load i8*, i8** %4, align 8
  store i8* %73, i8** %3, align 8
  br label %74

74:                                               ; preds = %72, %64
  %75 = load i8*, i8** %3, align 8
  ret i8* %75
}

declare dso_local i64 @strlen(i8*) #1

declare dso_local %struct.TYPE_4__* @svn_stringbuf_create_ensure(i32, i32*) #1

declare dso_local i32 @svn_stringbuf_appendbyte(%struct.TYPE_4__*, i8 signext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
