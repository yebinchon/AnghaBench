; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libxo/xo/extr_xo.c_print_help.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libxo/xo/extr_xo.c_print_help.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [1539 x i8] c"Usage: xo [options] format [fields]\0A    --close <path>        Close tags for the given path\0A    --close-instance <name> Close an open instance name\0A    --close-list <name>   Close an open list name\0A    --continuation OR -C  Output belongs on same line as previous output\0A    --depth <num>         Set the depth for pretty printing\0A    --help                Display this help text\0A    --html OR -H          Generate HTML output\0A    --instance OR -I <name> Wrap in an instance of the given name\0A    --json OR -J          Generate JSON output\0A    --leading-xpath <path> OR -l <path> Add a prefix to generated XPaths (HTML)\0A    --not-first           Indicate this object is not the first (JSON)\0A    --open <path>         Open tags for the given path\0A    --open-instance <name> Open an instance given by name\0A    --open-list <name>   Open a list given by name\0A    --option <opts> -or -O <opts>  Give formatting options\0A    --pretty OR -p        Make 'pretty' output (add indent, newlines)\0A    --style <style> OR -s <style>  Generate given style (xml, json, text, html)\0A    --text OR -T          Generate text output (the default style)\0A    --top-wrap            Generate a top-level object wrapper (JSON)\0A    --version             Display version information\0A    --warn OR -W          Display warnings in text on stderr\0A    --warn-xml            Display warnings in xml on stdout\0A    --wrap <path>         Wrap output in a set of containers\0A    --xml OR -X           Generate XML output\0A    --xpath               Add XPath data to HTML output\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @print_help to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @print_help() #0 {
  %1 = load i32, i32* @stderr, align 4
  %2 = call i32 @fprintf(i32 %1, i8* getelementptr inbounds ([1539 x i8], [1539 x i8]* @.str, i64 0, i64 0))
  ret void
}

declare dso_local i32 @fprintf(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
