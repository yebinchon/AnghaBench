; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_remote-mips.c_pmon_make_fastrec.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_remote-mips.c_pmon_make_fastrec.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MAXRECSIZE = common dso_local global i32 0, align 4
@CHECKSIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"/B\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8**, i8*, i32*, i32, i32*, i32*, i32*)* @pmon_make_fastrec to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pmon_make_fastrec(i8** %0, i8* %1, i32* %2, i32 %3, i32* %4, i32* %5, i32* %6) #0 {
  %8 = alloca i8**, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i8*, align 8
  %17 = alloca i32, align 4
  store i8** %0, i8*** %8, align 8
  store i8* %1, i8** %9, align 8
  store i32* %2, i32** %10, align 8
  store i32 %3, i32* %11, align 4
  store i32* %4, i32** %12, align 8
  store i32* %5, i32** %13, align 8
  store i32* %6, i32** %14, align 8
  store i32 0, i32* %15, align 4
  %18 = load i8**, i8*** %8, align 8
  %19 = load i8*, i8** %18, align 8
  store i8* %19, i8** %16, align 8
  br label %20

20:                                               ; preds = %153, %7
  %21 = load i32*, i32** %12, align 8
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* @MAXRECSIZE, align 4
  %24 = load i32, i32* @CHECKSIZE, align 4
  %25 = sub nsw i32 %23, %24
  %26 = icmp slt i32 %22, %25
  br i1 %26, label %27, label %33

27:                                               ; preds = %20
  %28 = load i32, i32* %11, align 4
  %29 = load i32*, i32** %10, align 8
  %30 = load i32, i32* %29, align 4
  %31 = sub nsw i32 %28, %30
  %32 = icmp sgt i32 %31, 0
  br label %33

33:                                               ; preds = %27, %20
  %34 = phi i1 [ false, %20 ], [ %32, %27 ]
  br i1 %34, label %35, label %154

35:                                               ; preds = %33
  %36 = load i32, i32* %11, align 4
  %37 = load i32*, i32** %10, align 8
  %38 = load i32, i32* %37, align 4
  %39 = sub nsw i32 %36, %38
  %40 = icmp slt i32 %39, 3
  br i1 %40, label %41, label %79

41:                                               ; preds = %35
  %42 = load i32*, i32** %14, align 8
  %43 = load i32, i32* %42, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %52

45:                                               ; preds = %41
  %46 = load i32*, i32** %12, align 8
  %47 = load i32, i32* %46, align 4
  %48 = load i32*, i32** %14, align 8
  %49 = load i32*, i32** %13, align 8
  %50 = call i32 @pmon_zeroset(i32 %47, i8** %16, i32* %48, i32* %49)
  %51 = load i32*, i32** %12, align 8
  store i32 %50, i32* %51, align 4
  br label %52

52:                                               ; preds = %45, %41
  %53 = load i8*, i8** %16, align 8
  %54 = call i32 @sprintf(i8* %53, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  %55 = load i8*, i8** %9, align 8
  %56 = load i32*, i32** %10, align 8
  %57 = load i32, i32* %56, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds i8, i8* %55, i64 %58
  %60 = load i8, i8* %59, align 1
  %61 = zext i8 %60 to i32
  %62 = load i8*, i8** %16, align 8
  %63 = getelementptr inbounds i8, i8* %62, i64 2
  %64 = load i32*, i32** %13, align 8
  %65 = call i32 @pmon_makeb64(i32 %61, i8* %63, i32 12, i32* %64)
  store i32 %65, i32* %15, align 4
  %66 = load i32, i32* %15, align 4
  %67 = add nsw i32 2, %66
  %68 = load i8*, i8** %16, align 8
  %69 = sext i32 %67 to i64
  %70 = getelementptr inbounds i8, i8* %68, i64 %69
  store i8* %70, i8** %16, align 8
  %71 = load i32, i32* %15, align 4
  %72 = add nsw i32 2, %71
  %73 = load i32*, i32** %12, align 8
  %74 = load i32, i32* %73, align 4
  %75 = add nsw i32 %74, %72
  store i32 %75, i32* %73, align 4
  %76 = load i32*, i32** %10, align 8
  %77 = load i32, i32* %76, align 4
  %78 = add nsw i32 %77, 1
  store i32 %78, i32* %76, align 4
  br label %153

79:                                               ; preds = %35
  %80 = load i8*, i8** %9, align 8
  %81 = load i32*, i32** %10, align 8
  %82 = load i32, i32* %81, align 4
  %83 = add nsw i32 %82, 0
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds i8, i8* %80, i64 %84
  %86 = load i8, i8* %85, align 1
  %87 = zext i8 %86 to i32
  %88 = shl i32 %87, 16
  %89 = load i8*, i8** %9, align 8
  %90 = load i32*, i32** %10, align 8
  %91 = load i32, i32* %90, align 4
  %92 = add nsw i32 %91, 1
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds i8, i8* %89, i64 %93
  %95 = load i8, i8* %94, align 1
  %96 = zext i8 %95 to i32
  %97 = shl i32 %96, 8
  %98 = or i32 %88, %97
  %99 = load i8*, i8** %9, align 8
  %100 = load i32*, i32** %10, align 8
  %101 = load i32, i32* %100, align 4
  %102 = add nsw i32 %101, 2
  %103 = sext i32 %102 to i64
  %104 = getelementptr inbounds i8, i8* %99, i64 %103
  %105 = load i8, i8* %104, align 1
  %106 = zext i8 %105 to i32
  %107 = or i32 %98, %106
  store i32 %107, i32* %17, align 4
  %108 = load i32, i32* %17, align 4
  %109 = icmp eq i32 %108, 0
  br i1 %109, label %110, label %125

110:                                              ; preds = %79
  %111 = load i32*, i32** %14, align 8
  %112 = load i32, i32* %111, align 4
  %113 = add i32 %112, 1
  store i32 %113, i32* %111, align 4
  %114 = load i32*, i32** %14, align 8
  %115 = load i32, i32* %114, align 4
  %116 = icmp eq i32 %115, 4095
  br i1 %116, label %117, label %124

117:                                              ; preds = %110
  %118 = load i32*, i32** %12, align 8
  %119 = load i32, i32* %118, align 4
  %120 = load i32*, i32** %14, align 8
  %121 = load i32*, i32** %13, align 8
  %122 = call i32 @pmon_zeroset(i32 %119, i8** %16, i32* %120, i32* %121)
  %123 = load i32*, i32** %12, align 8
  store i32 %122, i32* %123, align 4
  br label %124

124:                                              ; preds = %117, %110
  br label %149

125:                                              ; preds = %79
  %126 = load i32*, i32** %14, align 8
  %127 = load i32, i32* %126, align 4
  %128 = icmp ne i32 %127, 0
  br i1 %128, label %129, label %136

129:                                              ; preds = %125
  %130 = load i32*, i32** %12, align 8
  %131 = load i32, i32* %130, align 4
  %132 = load i32*, i32** %14, align 8
  %133 = load i32*, i32** %13, align 8
  %134 = call i32 @pmon_zeroset(i32 %131, i8** %16, i32* %132, i32* %133)
  %135 = load i32*, i32** %12, align 8
  store i32 %134, i32* %135, align 4
  br label %136

136:                                              ; preds = %129, %125
  %137 = load i32, i32* %17, align 4
  %138 = load i8*, i8** %16, align 8
  %139 = load i32*, i32** %13, align 8
  %140 = call i32 @pmon_makeb64(i32 %137, i8* %138, i32 24, i32* %139)
  store i32 %140, i32* %15, align 4
  %141 = load i32, i32* %15, align 4
  %142 = load i8*, i8** %16, align 8
  %143 = sext i32 %141 to i64
  %144 = getelementptr inbounds i8, i8* %142, i64 %143
  store i8* %144, i8** %16, align 8
  %145 = load i32, i32* %15, align 4
  %146 = load i32*, i32** %12, align 8
  %147 = load i32, i32* %146, align 4
  %148 = add nsw i32 %147, %145
  store i32 %148, i32* %146, align 4
  br label %149

149:                                              ; preds = %136, %124
  %150 = load i32*, i32** %10, align 8
  %151 = load i32, i32* %150, align 4
  %152 = add nsw i32 %151, 3
  store i32 %152, i32* %150, align 4
  br label %153

153:                                              ; preds = %149, %52
  br label %20

154:                                              ; preds = %33
  %155 = load i8*, i8** %16, align 8
  %156 = load i8**, i8*** %8, align 8
  store i8* %155, i8** %156, align 8
  ret void
}

declare dso_local i32 @pmon_zeroset(i32, i8**, i32*, i32*) #1

declare dso_local i32 @sprintf(i8*, i8*) #1

declare dso_local i32 @pmon_makeb64(i32, i8*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
