; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_fs_x/extr_temp_serializer.c_serialize_svn_string_array.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_fs_x/extr_temp_serializer.c_serialize_svn_string_array.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32***, i32)* @serialize_svn_string_array to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @serialize_svn_string_array(i32* %0, i32*** %1, i32 %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32***, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32**, align 8
  store i32* %0, i32** %4, align 8
  store i32*** %1, i32**** %5, align 8
  store i32 %2, i32* %6, align 4
  %9 = load i32***, i32**** %5, align 8
  %10 = load i32**, i32*** %9, align 8
  store i32** %10, i32*** %8, align 8
  %11 = load i32*, i32** %4, align 8
  %12 = load i32***, i32**** %5, align 8
  %13 = bitcast i32*** %12 to i8**
  %14 = load i32, i32* %6, align 4
  %15 = sext i32 %14 to i64
  %16 = mul i64 %15, 8
  %17 = trunc i64 %16 to i32
  %18 = call i32 @svn_temp_serializer__push(i32* %11, i8** %13, i32 %17)
  store i32 0, i32* %7, align 4
  br label %19

19:                                               ; preds = %30, %3
  %20 = load i32, i32* %7, align 4
  %21 = load i32, i32* %6, align 4
  %22 = icmp slt i32 %20, %21
  br i1 %22, label %23, label %33

23:                                               ; preds = %19
  %24 = load i32*, i32** %4, align 8
  %25 = load i32**, i32*** %8, align 8
  %26 = load i32, i32* %7, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds i32*, i32** %25, i64 %27
  %29 = call i32 @serialize_svn_string(i32* %24, i32** %28)
  br label %30

30:                                               ; preds = %23
  %31 = load i32, i32* %7, align 4
  %32 = add nsw i32 %31, 1
  store i32 %32, i32* %7, align 4
  br label %19

33:                                               ; preds = %19
  %34 = load i32*, i32** %4, align 8
  %35 = call i32 @svn_temp_serializer__pop(i32* %34)
  ret void
}

declare dso_local i32 @svn_temp_serializer__push(i32*, i8**, i32) #1

declare dso_local i32 @serialize_svn_string(i32*, i32**) #1

declare dso_local i32 @svn_temp_serializer__pop(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
