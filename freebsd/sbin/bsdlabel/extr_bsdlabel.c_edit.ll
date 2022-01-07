; ModuleID = '/home/carl/AnghaBench/freebsd/sbin/bsdlabel/extr_bsdlabel.c_edit.c'
source_filename = "/home/carl/AnghaBench/freebsd/sbin/bsdlabel/extr_bsdlabel.c_edit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.disklabel = type { i32 }

@tmpfil = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [2 x i8] c"w\00", align 1
@.str.1 = private unnamed_addr constant [16 x i8] c"can't create %s\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.3 = private unnamed_addr constant [28 x i8] c"can't reopen %s for reading\00", align 1
@lab = common dso_local global %struct.disklabel zeroinitializer, align 4
@.str.4 = private unnamed_addr constant [25 x i8] c"re-edit the label? [y]: \00", align 1
@stdout = common dso_local global i32 0, align 4
@EOF = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @edit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @edit() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.disklabel, align 4
  %5 = alloca i32*, align 8
  %6 = load i32, i32* @tmpfil, align 4
  %7 = call i32 @mkstemp(i32 %6)
  store i32 %7, i32* %3, align 4
  %8 = icmp eq i32 %7, -1
  br i1 %8, label %13, label %9

9:                                                ; preds = %0
  %10 = load i32, i32* %3, align 4
  %11 = call i32* @fdopen(i32 %10, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  store i32* %11, i32** %5, align 8
  %12 = icmp eq i32* %11, null
  br i1 %12, label %13, label %16

13:                                               ; preds = %9, %0
  %14 = load i32, i32* @tmpfil, align 4
  %15 = call i32 @warnx(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0), i32 %14)
  store i32 1, i32* %1, align 4
  br label %75

16:                                               ; preds = %9
  %17 = load i32*, i32** %5, align 8
  %18 = call i32 @display(i32* %17, i32* null)
  %19 = load i32*, i32** %5, align 8
  %20 = call i32 @fclose(i32* %19)
  br label %21

21:                                               ; preds = %71, %16
  %22 = call i32 (...) @editit()
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %25, label %24

24:                                               ; preds = %21
  br label %72

25:                                               ; preds = %21
  %26 = load i32, i32* @tmpfil, align 4
  %27 = call i32* @fopen(i32 %26, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  store i32* %27, i32** %5, align 8
  %28 = load i32*, i32** %5, align 8
  %29 = icmp eq i32* %28, null
  br i1 %29, label %30, label %33

30:                                               ; preds = %25
  %31 = load i32, i32* @tmpfil, align 4
  %32 = call i32 @warnx(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.3, i64 0, i64 0), i32 %31)
  br label %72

33:                                               ; preds = %25
  %34 = bitcast %struct.disklabel* %4 to i8*
  %35 = call i32 @bzero(i8* %34, i32 4)
  %36 = load i32*, i32** %5, align 8
  %37 = call i32 @getasciilabel(i32* %36, %struct.disklabel* %4)
  store i32 %37, i32* %2, align 4
  %38 = load i32*, i32** %5, align 8
  %39 = call i32 @fclose(i32* %38)
  %40 = load i32, i32* %2, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %50

42:                                               ; preds = %33
  %43 = bitcast %struct.disklabel* %4 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 bitcast (%struct.disklabel* @lab to i8*), i8* align 4 %43, i64 4, i1 false)
  %44 = call i64 (...) @writelabel()
  %45 = icmp eq i64 %44, 0
  br i1 %45, label %46, label %49

46:                                               ; preds = %42
  %47 = load i32, i32* @tmpfil, align 4
  %48 = call i32 @unlink(i32 %47)
  store i32 0, i32* %1, align 4
  br label %75

49:                                               ; preds = %42
  br label %50

50:                                               ; preds = %49, %33
  %51 = call i32 @printf(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.4, i64 0, i64 0))
  %52 = load i32, i32* @stdout, align 4
  %53 = call i32 @fflush(i32 %52)
  %54 = call i32 (...) @getchar()
  store i32 %54, i32* %2, align 4
  %55 = load i32, i32* %2, align 4
  %56 = load i32, i32* @EOF, align 4
  %57 = icmp ne i32 %55, %56
  br i1 %57, label %58, label %67

58:                                               ; preds = %50
  %59 = load i32, i32* %2, align 4
  %60 = icmp ne i32 %59, 10
  br i1 %60, label %61, label %67

61:                                               ; preds = %58
  br label %62

62:                                               ; preds = %65, %61
  %63 = call i32 (...) @getchar()
  %64 = icmp ne i32 %63, 10
  br i1 %64, label %65, label %66

65:                                               ; preds = %62
  br label %62

66:                                               ; preds = %62
  br label %67

67:                                               ; preds = %66, %58, %50
  %68 = load i32, i32* %2, align 4
  %69 = icmp eq i32 %68, 110
  br i1 %69, label %70, label %71

70:                                               ; preds = %67
  br label %72

71:                                               ; preds = %67
  br label %21

72:                                               ; preds = %70, %30, %24
  %73 = load i32, i32* @tmpfil, align 4
  %74 = call i32 @unlink(i32 %73)
  store i32 1, i32* %1, align 4
  br label %75

75:                                               ; preds = %72, %46, %13
  %76 = load i32, i32* %1, align 4
  ret i32 %76
}

declare dso_local i32 @mkstemp(i32) #1

declare dso_local i32* @fdopen(i32, i8*) #1

declare dso_local i32 @warnx(i8*, i32) #1

declare dso_local i32 @display(i32*, i32*) #1

declare dso_local i32 @fclose(i32*) #1

declare dso_local i32 @editit(...) #1

declare dso_local i32* @fopen(i32, i8*) #1

declare dso_local i32 @bzero(i8*, i32) #1

declare dso_local i32 @getasciilabel(i32*, %struct.disklabel*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i64 @writelabel(...) #1

declare dso_local i32 @unlink(i32) #1

declare dso_local i32 @printf(i8*) #1

declare dso_local i32 @fflush(i32) #1

declare dso_local i32 @getchar(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
