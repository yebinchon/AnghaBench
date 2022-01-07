; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/tcsh/extr_ed.xmap.c_unparsech.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/tcsh/extr_ed.xmap.c_unparsech.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Strbuf = type { i32 }

@_toebcdic = common dso_local global i32* null, align 8
@_toascii = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.Strbuf*, i32)* @unparsech to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @unparsech(%struct.Strbuf* %0, i32 %1) #0 {
  %3 = alloca %struct.Strbuf*, align 8
  %4 = alloca i32, align 4
  store %struct.Strbuf* %0, %struct.Strbuf** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load i32, i32* %4, align 4
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %12

7:                                                ; preds = %2
  %8 = load %struct.Strbuf*, %struct.Strbuf** %3, align 8
  %9 = call i32 @Strbuf_append1(%struct.Strbuf* %8, i32 94)
  %10 = load %struct.Strbuf*, %struct.Strbuf** %3, align 8
  %11 = call i32 @Strbuf_append1(%struct.Strbuf* %10, i32 64)
  br label %94

12:                                               ; preds = %2
  %13 = load i32, i32* %4, align 4
  %14 = call i64 @Iscntrl(i32 %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %39

16:                                               ; preds = %12
  %17 = load %struct.Strbuf*, %struct.Strbuf** %3, align 8
  %18 = call i32 @Strbuf_append1(%struct.Strbuf* %17, i32 94)
  %19 = load i32, i32* %4, align 4
  %20 = call i32 @CTL_ESC(i8 signext 127)
  %21 = icmp eq i32 %19, %20
  br i1 %21, label %22, label %25

22:                                               ; preds = %16
  %23 = load %struct.Strbuf*, %struct.Strbuf** %3, align 8
  %24 = call i32 @Strbuf_append1(%struct.Strbuf* %23, i32 63)
  br label %38

25:                                               ; preds = %16
  %26 = load %struct.Strbuf*, %struct.Strbuf** %3, align 8
  %27 = load i32*, i32** @_toebcdic, align 8
  %28 = load i32*, i32** @_toascii, align 8
  %29 = load i32, i32* %4, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds i32, i32* %28, i64 %30
  %32 = load i32, i32* %31, align 4
  %33 = or i32 %32, 64
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds i32, i32* %27, i64 %34
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @Strbuf_append1(%struct.Strbuf* %26, i32 %36)
  br label %38

38:                                               ; preds = %25, %22
  br label %93

39:                                               ; preds = %12
  %40 = load i32, i32* %4, align 4
  %41 = icmp eq i32 %40, 94
  br i1 %41, label %42, label %47

42:                                               ; preds = %39
  %43 = load %struct.Strbuf*, %struct.Strbuf** %3, align 8
  %44 = call i32 @Strbuf_append1(%struct.Strbuf* %43, i32 92)
  %45 = load %struct.Strbuf*, %struct.Strbuf** %3, align 8
  %46 = call i32 @Strbuf_append1(%struct.Strbuf* %45, i32 94)
  br label %92

47:                                               ; preds = %39
  %48 = load i32, i32* %4, align 4
  %49 = icmp eq i32 %48, 92
  br i1 %49, label %50, label %55

50:                                               ; preds = %47
  %51 = load %struct.Strbuf*, %struct.Strbuf** %3, align 8
  %52 = call i32 @Strbuf_append1(%struct.Strbuf* %51, i32 92)
  %53 = load %struct.Strbuf*, %struct.Strbuf** %3, align 8
  %54 = call i32 @Strbuf_append1(%struct.Strbuf* %53, i32 92)
  br label %91

55:                                               ; preds = %47
  %56 = load i32, i32* %4, align 4
  %57 = icmp eq i32 %56, 32
  br i1 %57, label %66, label %58

58:                                               ; preds = %55
  %59 = load i32, i32* %4, align 4
  %60 = call i64 @Isprint(i32 %59)
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %70

62:                                               ; preds = %58
  %63 = load i32, i32* %4, align 4
  %64 = call i32 @Isspace(i32 %63)
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %70, label %66

66:                                               ; preds = %62, %55
  %67 = load %struct.Strbuf*, %struct.Strbuf** %3, align 8
  %68 = load i32, i32* %4, align 4
  %69 = call i32 @Strbuf_append1(%struct.Strbuf* %67, i32 %68)
  br label %90

70:                                               ; preds = %62, %58
  %71 = load %struct.Strbuf*, %struct.Strbuf** %3, align 8
  %72 = call i32 @Strbuf_append1(%struct.Strbuf* %71, i32 92)
  %73 = load %struct.Strbuf*, %struct.Strbuf** %3, align 8
  %74 = load i32, i32* %4, align 4
  %75 = ashr i32 %74, 6
  %76 = and i32 %75, 7
  %77 = add nsw i32 %76, 48
  %78 = call i32 @Strbuf_append1(%struct.Strbuf* %73, i32 %77)
  %79 = load %struct.Strbuf*, %struct.Strbuf** %3, align 8
  %80 = load i32, i32* %4, align 4
  %81 = ashr i32 %80, 3
  %82 = and i32 %81, 7
  %83 = add nsw i32 %82, 48
  %84 = call i32 @Strbuf_append1(%struct.Strbuf* %79, i32 %83)
  %85 = load %struct.Strbuf*, %struct.Strbuf** %3, align 8
  %86 = load i32, i32* %4, align 4
  %87 = and i32 %86, 7
  %88 = add nsw i32 %87, 48
  %89 = call i32 @Strbuf_append1(%struct.Strbuf* %85, i32 %88)
  br label %90

90:                                               ; preds = %70, %66
  br label %91

91:                                               ; preds = %90, %50
  br label %92

92:                                               ; preds = %91, %42
  br label %93

93:                                               ; preds = %92, %38
  br label %94

94:                                               ; preds = %93, %7
  ret void
}

declare dso_local i32 @Strbuf_append1(%struct.Strbuf*, i32) #1

declare dso_local i64 @Iscntrl(i32) #1

declare dso_local i32 @CTL_ESC(i8 signext) #1

declare dso_local i64 @Isprint(i32) #1

declare dso_local i32 @Isspace(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
