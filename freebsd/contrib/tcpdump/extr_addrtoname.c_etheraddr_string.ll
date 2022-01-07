; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/tcpdump/extr_addrtoname.c_etheraddr_string.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/tcpdump/extr_addrtoname.c_etheraddr_string.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32 (%struct.TYPE_6__*, i8*)*, i32 }
%struct.enamemem = type { i8* }

@BUFSIZE = common dso_local global i32 0, align 4
@hex = common dso_local global i8** null, align 8
@.str = private unnamed_addr constant [10 x i8] c" (oui %s)\00", align 1
@oui_values = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [8 x i8] c"Unknown\00", align 1
@.str.2 = private unnamed_addr constant [30 x i8] c"etheraddr_string: strdup(buf)\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @etheraddr_string(%struct.TYPE_6__* %0, i32* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.TYPE_6__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca %struct.enamemem*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %4, align 8
  store i32* %1, i32** %5, align 8
  %13 = load i32, i32* @BUFSIZE, align 4
  %14 = zext i32 %13 to i64
  %15 = call i8* @llvm.stacksave()
  store i8* %15, i8** %10, align 8
  %16 = alloca i8, i64 %14, align 16
  store i64 %14, i64* %11, align 8
  %17 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %18 = load i32*, i32** %5, align 8
  %19 = call %struct.enamemem* @lookup_emem(%struct.TYPE_6__* %17, i32* %18)
  store %struct.enamemem* %19, %struct.enamemem** %8, align 8
  %20 = load %struct.enamemem*, %struct.enamemem** %8, align 8
  %21 = getelementptr inbounds %struct.enamemem, %struct.enamemem* %20, i32 0, i32 0
  %22 = load i8*, i8** %21, align 8
  %23 = icmp ne i8* %22, null
  br i1 %23, label %24, label %28

24:                                               ; preds = %2
  %25 = load %struct.enamemem*, %struct.enamemem** %8, align 8
  %26 = getelementptr inbounds %struct.enamemem, %struct.enamemem* %25, i32 0, i32 0
  %27 = load i8*, i8** %26, align 8
  store i8* %27, i8** %3, align 8
  store i32 1, i32* %12, align 4
  br label %113

28:                                               ; preds = %2
  store i8* %16, i8** %7, align 8
  %29 = load i32*, i32** %5, align 8
  %30 = call i32 @EXTRACT_24BITS(i32* %29)
  store i32 %30, i32* %9, align 4
  %31 = load i8**, i8*** @hex, align 8
  %32 = load i32*, i32** %5, align 8
  %33 = load i32, i32* %32, align 4
  %34 = ashr i32 %33, 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds i8*, i8** %31, i64 %35
  %37 = load i8*, i8** %36, align 8
  %38 = ptrtoint i8* %37 to i8
  %39 = load i8*, i8** %7, align 8
  %40 = getelementptr inbounds i8, i8* %39, i32 1
  store i8* %40, i8** %7, align 8
  store i8 %38, i8* %39, align 1
  %41 = load i8**, i8*** @hex, align 8
  %42 = load i32*, i32** %5, align 8
  %43 = getelementptr inbounds i32, i32* %42, i32 1
  store i32* %43, i32** %5, align 8
  %44 = load i32, i32* %42, align 4
  %45 = and i32 %44, 15
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds i8*, i8** %41, i64 %46
  %48 = load i8*, i8** %47, align 8
  %49 = ptrtoint i8* %48 to i8
  %50 = load i8*, i8** %7, align 8
  %51 = getelementptr inbounds i8, i8* %50, i32 1
  store i8* %51, i8** %7, align 8
  store i8 %49, i8* %50, align 1
  store i32 5, i32* %6, align 4
  br label %52

52:                                               ; preds = %56, %28
  %53 = load i32, i32* %6, align 4
  %54 = add nsw i32 %53, -1
  store i32 %54, i32* %6, align 4
  %55 = icmp sge i32 %54, 0
  br i1 %55, label %56, label %80

56:                                               ; preds = %52
  %57 = load i8*, i8** %7, align 8
  %58 = getelementptr inbounds i8, i8* %57, i32 1
  store i8* %58, i8** %7, align 8
  store i8 58, i8* %57, align 1
  %59 = load i8**, i8*** @hex, align 8
  %60 = load i32*, i32** %5, align 8
  %61 = load i32, i32* %60, align 4
  %62 = ashr i32 %61, 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds i8*, i8** %59, i64 %63
  %65 = load i8*, i8** %64, align 8
  %66 = ptrtoint i8* %65 to i8
  %67 = load i8*, i8** %7, align 8
  %68 = getelementptr inbounds i8, i8* %67, i32 1
  store i8* %68, i8** %7, align 8
  store i8 %66, i8* %67, align 1
  %69 = load i8**, i8*** @hex, align 8
  %70 = load i32*, i32** %5, align 8
  %71 = getelementptr inbounds i32, i32* %70, i32 1
  store i32* %71, i32** %5, align 8
  %72 = load i32, i32* %70, align 4
  %73 = and i32 %72, 15
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds i8*, i8** %69, i64 %74
  %76 = load i8*, i8** %75, align 8
  %77 = ptrtoint i8* %76 to i8
  %78 = load i8*, i8** %7, align 8
  %79 = getelementptr inbounds i8, i8* %78, i32 1
  store i8* %79, i8** %7, align 8
  store i8 %77, i8* %78, align 1
  br label %52

80:                                               ; preds = %52
  %81 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %82 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %81, i32 0, i32 1
  %83 = load i32, i32* %82, align 8
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %93, label %85

85:                                               ; preds = %80
  %86 = load i8*, i8** %7, align 8
  %87 = load i32, i32* @BUFSIZE, align 4
  %88 = sub nsw i32 %87, 17
  %89 = load i32, i32* @oui_values, align 4
  %90 = load i32, i32* %9, align 4
  %91 = call i8* @tok2str(i32 %89, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i32 %90)
  %92 = call i32 @snprintf(i8* %86, i32 %88, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i8* %91)
  br label %95

93:                                               ; preds = %80
  %94 = load i8*, i8** %7, align 8
  store i8 0, i8* %94, align 1
  br label %95

95:                                               ; preds = %93, %85
  %96 = call i8* @strdup(i8* %16)
  %97 = load %struct.enamemem*, %struct.enamemem** %8, align 8
  %98 = getelementptr inbounds %struct.enamemem, %struct.enamemem* %97, i32 0, i32 0
  store i8* %96, i8** %98, align 8
  %99 = load %struct.enamemem*, %struct.enamemem** %8, align 8
  %100 = getelementptr inbounds %struct.enamemem, %struct.enamemem* %99, i32 0, i32 0
  %101 = load i8*, i8** %100, align 8
  %102 = icmp eq i8* %101, null
  br i1 %102, label %103, label %109

103:                                              ; preds = %95
  %104 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %105 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %104, i32 0, i32 0
  %106 = load i32 (%struct.TYPE_6__*, i8*)*, i32 (%struct.TYPE_6__*, i8*)** %105, align 8
  %107 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %108 = call i32 %106(%struct.TYPE_6__* %107, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0))
  br label %109

109:                                              ; preds = %103, %95
  %110 = load %struct.enamemem*, %struct.enamemem** %8, align 8
  %111 = getelementptr inbounds %struct.enamemem, %struct.enamemem* %110, i32 0, i32 0
  %112 = load i8*, i8** %111, align 8
  store i8* %112, i8** %3, align 8
  store i32 1, i32* %12, align 4
  br label %113

113:                                              ; preds = %109, %24
  %114 = load i8*, i8** %10, align 8
  call void @llvm.stackrestore(i8* %114)
  %115 = load i8*, i8** %3, align 8
  ret i8* %115
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local %struct.enamemem* @lookup_emem(%struct.TYPE_6__*, i32*) #2

declare dso_local i32 @EXTRACT_24BITS(i32*) #2

declare dso_local i32 @snprintf(i8*, i32, i8*, i8*) #2

declare dso_local i8* @tok2str(i32, i8*, i32) #2

declare dso_local i8* @strdup(i8*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
